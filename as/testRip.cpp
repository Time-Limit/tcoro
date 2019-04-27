#include <bits/stdc++.h>

using namespace std;

int main() {

    uint64_t addr = 0x0;
    uint64_t ripVal = (uint64_t)&addr;
    __asm__ __volatile__ (  "jmp *%0\n\t" //此处会将 rip 置为 &addr。
                            :
                            : "m"(ripVal)
            );

    ripVal = 0x1234;
    return 0;
}
