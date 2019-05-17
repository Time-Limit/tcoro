#ifndef __TCORO_CORO_H__
#define __TCORO_CORO_H__

#include <queue>
#include <stack>
#include <string.h>
#include <stddef.h>
#include <iostream>
#include <functional>

class CoroManager;

class Coro{
    friend class CoroManager;
    public:
        typedef std::function<void()> FuncType;
    private:
        Coro(const Coro &) = delete;
        Coro& operator= (const Coro &) = delete;
        
        Coro() : Coro(nullptr) {};
        ~Coro() = default;
        Coro(const FuncType &f);

        static void run(Coro &c);

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
        typedef unsigned char StatusType;
        StatusType status;

    public:
        enum {
            CORO_STATUS_INIT    = 0,
            CORO_STATUS_RUN     = 1,
            CORO_STATUS_YIELD   = 2,
            CORO_STATUS_FINISH  = 3,
        };
        bool CanResume() const { return status == CORO_STATUS_INIT || status == CORO_STATUS_YIELD; }
        bool CanYield() const { return status == CORO_STATUS_RUN; }
        bool IsFinish() const { return status == CORO_STATUS_FINISH; }

        void Debug() {
            printf("0x%x, 0x%x\n", stack, stackPointer);
        }
};

class CoroManager;

class CoroKeeper {
    public:
        CoroKeeper(Coro *p = nullptr) : ptr(p), ptrCnt(new uint64_t (1)) {}
        CoroKeeper(const CoroKeeper &ck) : ptr(ck.ptr), ptrCnt(ck.ptrCnt) { ++(*ptrCnt); }
        CoroKeeper& operator= (const CoroKeeper &ck);
        ~CoroKeeper();
        Coro* operator-> () { return ptr; }
        Coro& operator*() { return *ptr; }
        operator Coro*() { return ptr; }
        const Coro* operator-> () const { return ptr; }
        const Coro& operator*() const { return *ptr; }
        operator const Coro*() const { return ptr; }
        bool IsLast() const { return (*ptrCnt == uint64_t(1)); }
    private:
        uint64_t *ptrCnt;
        Coro *ptr;
};

class CoroManager {
    friend class CoroKeeper;
    private:
        CoroManager();
        ~CoroManager();
        CoroManager(const CoroManager &) = delete;
        CoroManager& operator=(const CoroManager &) = delete;

    private:
        enum {
            MAX_CORO_SIZE = 16,
        };
        Coro pool[MAX_CORO_SIZE];
        typedef std::queue<Coro*> CoroPtrPoolType;
        CoroPtrPoolType coroPtrPool;

        void Recovery(Coro *ptr) {
            if(ptr) {
                coroPtrPool.push(ptr);
            }
        }

        typedef std::stack<CoroKeeper> CoroStackType;
        CoroStackType enableCoroStack;

        bool IsMainCoro(const CoroKeeper &ck) const { return &(*ck) == &pool[0]; }

    public:
        static CoroManager& GetInstance() {
            thread_local CoroManager instance;
            return instance;
        }

        bool Resume(CoroKeeper &ck);
        bool Yield();
        CoroKeeper Spawn(const Coro::FuncType &f) {
            if(coroPtrPool.empty()) {
                return CoroKeeper();
            }
            CoroKeeper keeper = coroPtrPool.front();
            coroPtrPool.pop();
            keeper->~Coro();
            new (keeper) Coro(f);
            return keeper;
        }

        void Debug() const {
            std::cout << enableCoroStack.size() << std::endl;
            std::cout << coroPtrPool.size() << std::endl;
        }
};

#endif
