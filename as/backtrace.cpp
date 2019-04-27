#include <stdio.h>
#include <functional>
#include <bits/stdc++.h>
#include "backtrace.h"

using namespace std;

void printBackTrace() {
    uint64_t rbpVal = 0;
    uint64_t oldRbpVal = 0;
    uint64_t retPosVal = 0;
    uint64_t curPosVal = 0;
    __asm__ __volatile__ (  "movq %%rbp, %0\n\t"
                            "push %%rip\n\t"
                            "popq %1\n\t"
                            : "=m"(rbpVal), "=m"(curPosVal));

    cout << std::hex << curPosVal << endl;

    while(true) {
        if(rbpVal == 0) {
            break;
        }
        oldRbpVal = *(uint64_t *) (rbpVal);
        retPosVal = *(uint64_t *) (rbpVal + 8) - 8;
        if(oldRbpVal == 0) {
            break;
        }
        cout << std::hex << retPosVal << endl;
        rbpVal = oldRbpVal;
    }
}
