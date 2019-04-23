#include <functional>
#include <bits/stdc++.h>
#include "backtrace.h"

using namespace std;

int test() {
    int a = 0;
    for(int i = 0; i < 100; ++i) {
        map<int, int> val;
        val.insert(make_pair(1, 100));
    }
    printBackTrace();
    int b = a;
    int c = b;
    return a+b+c;
}

int main() {
    int a = 0;
    int b = a;
    test();
    int c = a+b;
    return c;
}
