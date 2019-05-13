#include <bits/stdc++.h>

using namespace std;

static ptrdiff_t mainReturnAddress;

void hackCallFunc(int64_t a, int64_t b) {
    cout << "hackCallFunc" << endl;
    __asm__ __volatile__ (  "movq %%rbx, 0x8(%%rbp)\n\t"
                            :
                            :"b"(mainReturnAddress));
}

void hackReturnAddress() {
    ptrdiff_t rsp = 0;
    uint64_t returnAddress = (uint64_t)&hackCallFunc;
    __asm__ __volatile__ (  "movq %%rsp, %0"
                            :"=m"(rsp)
                            :);
    std::cout << "rsp:\t" << std::hex << rsp << std::dec << std::endl;
    ptrdiff_t prsp = (ptrdiff_t)&rsp;
    std::cout << "prsp:\t" << std::hex << prsp << std::dec << std::endl;
    std::cout << "rip:\t" << std::hex << *(uint64_t *)(prsp+48) << std::dec << std::endl;
    std::cout << "adr:\t" << std::hex << returnAddress << std::dec << std::endl;

    __asm__ __volatile__ (  "leaq 0x10, %%rsi\n\t"
                            "leaq 0x20, %%rdi\n\t"
                            "movq 0x8(%%rbp), %%rax\n\t"
                            "movq %%rax, %0\n\t"
                            "movq %%rbx, 0x8(%%rbp)\n\t"
                            :"=m"(mainReturnAddress)
                            :"b"(returnAddress));
}

int main() {
    uint64_t rsp = 0;
    __asm__ __volatile__ (  "movq %%rsp, %0"
                            :"=m"(rsp)
                            :);
    std::cout << "oldrsp:\t" << std::hex << rsp << std::dec << std::endl;
    hackReturnAddress();
    __asm__ __volatile__ (  "movq %%rsp, %0\n\t"
                            "subq $8, %%rsp\n\t" //两次 ret，一次 ret，使得rsp增加了8
                            :"=m"(rsp)
                            :);
    std::cout << "newrsp:\t" << std::hex << rsp << std::dec << std::endl;
    int a = 0;
    int b = 1;
    int c = 2;
    int d = 3;
    std::cout << std::hex;
    std::cout << a << std::endl;
    std::cout << b << std::endl;
    std::cout << c << std::endl;
    std::cout << d << std::endl;
    a = 0;
    b = 1;
    c = 2;
    d = 3;
    std::cout << a << std::endl;
    std::cout << b << std::endl;
    std::cout << c << std::endl;
    std::cout << d << std::endl;
    std::cout << std::dec;
    return 0;
}
