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
    public:
        typedef function<void()> FuncType;
        //typedef void(*FuncType)(int);
        Coro(const FuncType &f) : func(f), ripAddr(0), rsiAddr(0) {
            ripAddr = (ptrdiff_t)&Coro::run;
            rsiAddr = (ptrdiff_t)this;
        }

        static void Resume(Coro &c) {
            typedef uint64_t dataType;
            __asm__ __volatile__ (
                    "leaq %1, %%rsi\n\t"
                    "movq %%rsp, %%rbx\n\t"
                    "movq %%rbp, %%rsp\n\t"
                    "popq %%rcx\n\t"
                    "pushq %0\n\t"
                    "pushq %%rcx\n\t"
                    "movq %%rsp, %%rbp\n\t"
                    "movq %%rbx, %%rsp\n\t"
                    "subq $0x8, %%rsp\n\t"
                    :"=m"(c.ripAddr), "=m"(c.rsiAddr)
                    :
                    );
        }

    private:
        FuncType func;
        ptrdiff_t ripAddr;
        ptrdiff_t rsiAddr;
        static void run(Coro &c) {
            if(c.func) { c.func(); }
        }
};

void func1(int a) {
    cout << "func1\t" << a << endl;
    return ;
}

int main() {
    Coro c1(bind(func1, 10));
    //debug();
    Coro::Resume(c1);
    cout << "main" << endl;
    //debug();
    return 0;
}
