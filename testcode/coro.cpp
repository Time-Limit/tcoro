#include "coro.h"

Coro::Coro(const FuncType &f) : func(f), stackPointer(0), status(CORO_STATUS_FINISH) {
    stackPointer = ptrdiff_t(stack + STACK_SIZE - INIT_FILL_SIZE);
    memset(stack, 0, sizeof(unsigned char)*STACK_SIZE);
    *(uint64_t *)(stack + RETURN_ADDRESS) = (uint64_t)&Coro::run;
    *(uint64_t *)(stack + RDI) = (uint64_t)this;
    *(uint64_t *)(stack + RAX) = (uint64_t)(stack+RETURN_ADDRESS);
    status = CORO_STATUS_INIT;
}

void Coro::run(Coro &c) {
    if(c.func) {
        try{
            c.func();
            c.func = nullptr;
            c.status = CORO_STATUS_FINISH;
        }catch(...){
            c.func = nullptr;
            c.status = CORO_STATUS_FINISH;
        }
    }
}

CoroKeeper& CoroKeeper::operator= (const CoroKeeper &ck) {
    if(this == &ck) {
        return *this;
    }
    if(--(*ptrCnt) <= 0) {
        this->~CoroKeeper();
    }
    ptrCnt = ck.ptrCnt;
    ptr = ck.ptr;
    ++(*ptrCnt);
}
CoroKeeper::~CoroKeeper() {
    if(*ptrCnt <= 0) {
        delete ptrCnt;
        ptrCnt = nullptr;
        if(ptr) {
            CoroManager::GetInstance().Recovery(ptr);
            ptr = nullptr;
        }
    } else {
        ptrCnt = nullptr;
        ptr = nullptr;
    }
}

extern "C" {
    void hackStackFrame(void *resumeStackPointer, void *yieldStackPointer);
};

CoroManager::CoroManager() {
    for(size_t i = 1; i < MAX_CORO_SIZE; ++i) {
        coroPtrPool.push(pool+i);
    }
    enableCoroStack.push(&pool[0]);
}

CoroManager::~CoroManager() {
    while(coroPtrPool.empty()) {
        coroPtrPool.pop();
    }
}

bool CoroManager::Resume(CoroKeeper &ck) {
    if(ck == nullptr || ck->CanResume() == false) {
        return false;
    }

    if(enableCoroStack.empty()) {
        return false;
    }
    //cout << &c << endl;
    //printf("ret     = 0x%x\n", c.stack+Coro::RETURN_ADDRESS);
    //printf("retval  = 0x%x\n", *(uint64_t*)(c.stack+Coro::RETURN_ADDRESS));
    //printf("runaddr = 0x%x\n", &Coro::run);
    //printf("pointer = 0x%x\n", c.stackPointer);
    hackStackFrame((void *)(ck->stackPointer), (void *)(enableCoroStack.top()->stackPointer));
    return true;
}

bool CoroManager::Yield() {
    return true;
}
