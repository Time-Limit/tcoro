#include <bits/stdc++.h>

using namespace std;

extern "C" {
    void hackStackFrame(void *);
};

#define outputSpecRegister(name) { \
    ptrdiff_t val = 0; \
    __asm__ __volatile__ ("movq %%" name ", %0\n\t" :"=m"(val) :); \
    std::cout << "" name "" << "\t" << std::hex << val << std::dec << std::endl; \
}

#define debug() { \
    outputSpecRegister("rax");\
    outputSpecRegister("rbx");\
    outputSpecRegister("rcx");\
    outputSpecRegister("rdx");\
    outputSpecRegister("rsi");\
    outputSpecRegister("rdi");\
    outputSpecRegister("rbp");\
    outputSpecRegister("rsp");\
    outputSpecRegister("r8");\
    outputSpecRegister("r9");\
    outputSpecRegister("r10");\
    outputSpecRegister("r11");\
    outputSpecRegister("r12");\
    outputSpecRegister("r13");\
    outputSpecRegister("r14");\
    outputSpecRegister("r15");\
    ptrdiff_t rbp = 0, rsp = 0;\
    __asm__ __volatile__ (  "movq %%rbp, %0\n\t" "movq %%rsp, %1\n\t" :"=m"(rbp), "=m"(rsp) :);\
    for(ptrdiff_t i = rsp+8; i <= rbp; i += 8) {\
        cout << std::hex << i << "\t" << *(uint64_t *)(i) << std::dec << std::endl;\
    }\
}

class CoroManager;

class Coro{
    friend class CoroManager;
    public:
        typedef function<void()> FuncType;
    private:
        Coro(const Coro &) = delete;
        Coro& operator= (const Coro &) = delete;
        
        Coro() = default;
        ~Coro() = default;
        Coro(const FuncType &f) : func(f), stackPointer(0) {
            stackPointer = ptrdiff_t(stack + STACK_SIZE - INIT_FILL_SIZE);
            memset(stack, 0, sizeof(unsigned char)*STACK_SIZE);
            *(uint64_t *)(stack + RETURN_ADDRESS) = (uint64_t)&Coro::run;
            *(uint64_t *)(stack + RDI) = (uint64_t)this;
            *(uint64_t *)(stack + RAX) = (uint64_t)(stack+RETURN_ADDRESS);
        }

        void ResetFunc(const FuncType &f) {
            func = f;
        }

    private:
        enum {
            STACK_SIZE = 2048000,

            RETURN_ADDRESS = STACK_SIZE - 0x08,

            RAX = (STACK_SIZE - 0x10),
            RBX = (STACK_SIZE - 0x18),
            RCX = (STACK_SIZE - 0x20),
            RDX = (STACK_SIZE - 0x28),
            RSI = (STACK_SIZE - 0x30),
            RDI = (STACK_SIZE - 0x38),
            RBP = (STACK_SIZE - 0x40),
            R8  = (STACK_SIZE - 0x48),
            R9  = (STACK_SIZE - 0x50),
            R10 = (STACK_SIZE - 0x58),
            R11 = (STACK_SIZE - 0x60),
            R12 = (STACK_SIZE - 0x68),
            R13 = (STACK_SIZE - 0x70),
            R14 = (STACK_SIZE - 0x78),
            R15 = (STACK_SIZE - 0x80),

            INIT_FILL_SIZE = 0x80,
        };
        unsigned char stack[STACK_SIZE];
        ptrdiff_t stackPointer;
        FuncType func;

    private:
        static void run(Coro &c) {
            if(c.func) { c.func(); }
        }
};

class CoroManager;

class CoroKeeper {
    public:
        CoroKeeper(Coro *p = nullptr) : ptr(p), ptrCnt(new uint64_t) { *ptrCnt = 1; }
        CoroKeeper(const CoroKeeper &ck) : ptr(ck.ptr), ptrCnt(ck.ptrCnt) { ++(*ptrCnt); }
        CoroKeeper& operator= (const CoroKeeper &ck) {
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
        ~CoroKeeper() {
            delete ptrCnt;
            ptrCnt = nullptr;
            CoroManager::GetInstance().Recovery(ptr);
            ptr = nullptr;
        }
        Coro* operator-> () {
            return ptr;
        }
    private:
        uint64_t *ptrCnt;
        Coro *ptr;
};

class CoroManager {
    friend class CoroKeeper;
    private:
        CoroManager() = default;
        ~CoroManager() = default;
        CoroManager(const CoroManager &) = delete;
        CoroManager& operator=(const CoroManager &) = delete;

    private:
        enum {
            POOL_SIZE = 16,
        };
        Coro pool[POOL_SIZE];
        typedef std::queue<Coro*> CoroPtrPool;
        CoroPtrPool coroPtrPool;

        Recovery(Coro *ptr) {
            coroPtrPool.push(ptr);
        }

    public:
        static CoroManager& GetInstance() {
            thread_local CoroManager instance;
            return instance;
        }

        bool Resume(Coro &c);
        bool Yield(Coro &c);
        CoroKeeper Spawn(const Coro::Func &f) {
            if(coroPtrPool.empty()) {
                return CoroKeeper();
            }
            CoroKeepr keeper = coroPtrPool().front();
            coroPtrPool().pop();
            keeper->~Coro();
            new (keeper) Coro(f);
            return keeper;
        }
};

bool CoroManager::Resume(Coro &c) {
    //cout << &c << endl;
    //printf("ret     = 0x%x\n", c.stack+Coro::RETURN_ADDRESS);
    //printf("retval  = 0x%x\n", *(uint64_t*)(c.stack+Coro::RETURN_ADDRESS));
    //printf("runaddr = 0x%x\n", &Coro::run);
    //printf("pointer = 0x%x\n", c.stackPointer);
    hackStackFrame((void *)(c.stackPointer));
    return true;
}

bool CoroManager::Yield(Coro &c) {
    return true;
}

void func1(int a) {
    cout << "func1\t" << a << endl;
    return ;
}

int main() {
    CoroManager::GetInstance();
    //Coro c1(std::bind(func1, 10));

    //CoroManager::GetInstance().Resume(c1);

    //debug();
    cout << "main" << endl;
    //debug();
    return 0;
}

