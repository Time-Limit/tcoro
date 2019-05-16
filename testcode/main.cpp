#include <bits/stdc++.h>
#include "coro.h"

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

void func1(std::string flag) {
    //cout << flag << "\tbefore" << endl;
    printf("%s\tb\n", flag.c_str());
    CoroManager::GetInstance().Yield();
    //cout << flag << "\tafter" << endl;
    printf("%s\ta\n", flag.c_str());
    return ;
}

int main() {
    CoroManager::GetInstance();

    CoroKeeper ck = CoroManager::GetInstance().Spawn(std::bind(func1, "A"));

    ck->Debug();

    CoroManager::GetInstance().Resume(ck);
    CoroManager::GetInstance().Resume(ck);

    //debug();
    cout << "main" << endl;
    //debug();
    return 0;
}

