#include <bits/stdc++.h>

using namespace std;

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

class Coro{
    friend void test(Coro &);
    public:
        typedef function<void()> FuncType;
        Coro(const FuncType &f) : func(f) {
            memset(stack, 0, sizeof(stack));
            stackPointer = (((ptrdiff_t)stack) + STACK_SIZE - 0x1 - INIT_FILL_SIZE)&0xfffffff8;
            *(uint64_t *)(stack + RETURN_ADDRESS) = (uint64_t)&Coro::run;
            *(uint64_t *)(stack + RSI) = (uint64_t)this;
            *(uint64_t *)(stack + RSP) = (uint64_t)stackPointer;
        }

        static void Resume(Coro &c);
        static void Yield(Coro &c);

    private:
        enum {
            STACK_SIZE = 2048,

            RAX = (STACK_SIZE - 0x08)&0xfffffff8,
            RBX = (STACK_SIZE - 0x10)&0xfffffff8,
            RCX = (STACK_SIZE - 0x18)&0xfffffff8,
            RDX = (STACK_SIZE - 0x20)&0xfffffff8,
            RSI = (STACK_SIZE - 0x28)&0xfffffff8,
            RDI = (STACK_SIZE - 0x30)&0xfffffff8,
            RBP = (STACK_SIZE - 0x38)&0xfffffff8,
            RSP = (STACK_SIZE - 0x40)&0xfffffff8,
            R8  = (STACK_SIZE - 0x48)&0xfffffff8,
            R9  = (STACK_SIZE - 0x50)&0xfffffff8,
            R10 = (STACK_SIZE - 0x58)&0xfffffff8,
            R11 = (STACK_SIZE - 0x60)&0xfffffff8,
            R12 = (STACK_SIZE - 0x68)&0xfffffff8,
            R13 = (STACK_SIZE - 0x70)&0xfffffff8,
            R14 = (STACK_SIZE - 0x78)&0xfffffff8,
            R15 = (STACK_SIZE - 0x80)&0xfffffff8,

            RETURN_ADDRESS = (STACK_SIZE - 0x88)&0xfffffff8,

            INIT_FILL_SIZE = 0x88,
        };
        unsigned char stack[STACK_SIZE];
        ptrdiff_t stackPointer;

        static unsigned char mainCoroData[INIT_FILL_SIZE];

    private:
        FuncType func;
        static void run(Coro &c) {
            if(c.func) { c.func(); }
        }
};

void Coro::Resume(Coro &c) {
}

void Coro::Yield(Coro &c) {
}

void func1(int a) {
    cout << "func1\t" << a << endl;
    return ;
}

int main() {
    Coro c1(std::bind(func1, 10));

    test(c1);

    //debug();
    cout << "main" << endl;
    //debug();
    return 0;
}

void test(Coro &c1) {

    int64_t rsp = 0;

    __asm__ __volatile__ (
            "movq %%rsp, %0\n\t"
            "leaq %1, %%rsp\n\t"
            "pushq %%rax\n\t"
            "pushq %%rbx\n\t"
            "pushq %%rcx\n\t"
            "pushq %%rdx\n\t"
            "pushq %%rsi\n\t"
            "pushq %%rdi\n\t"
            "pushq %%rbp\n\t"
            "pushq %%rsp\n\t"
            "pushq %%r8\n\t"
            "pushq %%r9\n\t"
            "pushq %%r10\n\t"
            "pushq %%r11\n\t"
            "pushq %%r12\n\t"
            "pushq %%r13\n\t"
            "pushq %%r14\n\t"
            "pushq %%r15\n\t"
            : "=m"(rsp)
            : "m"(c1.stackPointer)
            );

    __asm__ __volatile__ (
            "movq %0, %%rsp\n\t"
            :"=m"(rsp)
            );

    cout << hex << "rax\t" << *(uint64_t *)(c1.stack + Coro::RAX) << dec << endl;
    cout << hex << "rbx\t" << *(uint64_t *)(c1.stack + Coro::RBX) << dec << endl;
    cout << hex << "rcx\t" << *(uint64_t *)(c1.stack + Coro::RCX) << dec << endl;
    cout << hex << "rdx\t" << *(uint64_t *)(c1.stack + Coro::RDX) << dec << endl;
    cout << hex << "rsi\t" << *(uint64_t *)(c1.stack + Coro::RSI) << dec << endl;
    cout << hex << "rdi\t" << *(uint64_t *)(c1.stack + Coro::RDI) << dec << endl;
    cout << hex << "rbp\t" << *(uint64_t *)(c1.stack + Coro::RBP) << dec << endl;
    cout << hex << "rsp\t" << *(uint64_t *)(c1.stack + Coro::RSP) << dec << endl;
    cout << hex << "r8\t" << *(uint64_t *)(c1.stack + Coro::R8) << dec << endl;
    cout << hex << "r9\t" << *(uint64_t *)(c1.stack + Coro::R9) << dec << endl;
    cout << hex << "r10\t" << *(uint64_t *)(c1.stack + Coro::R10) << dec << endl;
    cout << hex << "r11\t" << *(uint64_t *)(c1.stack + Coro::R11) << dec << endl;
    cout << hex << "r12\t" << *(uint64_t *)(c1.stack + Coro::R12) << dec << endl;
    cout << hex << "r13\t" << *(uint64_t *)(c1.stack + Coro::R13) << dec << endl;
    cout << hex << "r14\t" << *(uint64_t *)(c1.stack + Coro::R14) << dec << endl;
    cout << hex << "r15\t" << *(uint64_t *)(c1.stack + Coro::R15) << dec << endl;
}

