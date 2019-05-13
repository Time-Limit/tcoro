#include <bits/stdc++.h>

using namespace std;

class Coro{
    enum {
        ripAddr = 0x00,
        rsiAddr = 0x08,
        rdiAddr = 0x10,
    };
    public:
        typedef function<void()> FuncType;
        Coro(const FuncType &f) : func(f), stackPointer(0), oldReturnAddress(0) {
            memset(stack, 0, sizeof(stack));
            *(ptrdiff_t **)(stack + ripAddr) = (ptrdiff_t *)&Coro::run;
            *(ptrdiff_t **)(stack + rsiAddr) = (ptrdiff_t *)this;
        }

        static void Resume(Coro &c) {
            typedef uint64_t dataType;
            dataType rip = *(dataType*)(c.stack + ripAddr);
            dataType rsi = *(dataType*)(c.stack + rsiAddr);
            __asm__ __volatile__ (  "leaq %1, %%rsi\n\t"
                                    "movq 0x8(%%rbp), %%rbx\n\t"
                                    "movq %%rbx, %2\n\t"
                                    "movq %0, %%rbx\n\t"
                                    "movq %%rbx, 0x8(%%rbp)\n\t"
                                    :"=m"(rip), "=m"(rsi), "=m"(c.oldReturnAddress)
                                    :);
        }

    private:
        FuncType func;
        unsigned char stack[1024];
        size_t stackPointer;
        ptrdiff_t oldReturnAddress;
        static void run(Coro &c) {
            if(c.func) { c.func(); }
            __asm__ __volatile__ (  "movq %%rbx, 0x8(%%rbp)\n\t"
                                    :
                                    :"b"(c.oldReturnAddress));
        }
};

void func1(int a) {
    cout << "func1\t" << a << endl;
    return ;
}

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

int main() {
    Coro c1(std::bind(func1, 10));
    debug();
    Coro::Resume(c1);
    cout << "main" << endl;
    __asm__ __volatile__ (  "subq $8, %%rsp\n\t" ::);
    debug();
    return 0;
}
