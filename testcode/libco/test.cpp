#include "co_routine_inner.h"
#include <bits/stdc++.h>

using namespace std;

typedef struct {
    int a, b;
    double d;
} structParam_t;

void output(const std::string flag, int e, int f,
        structParam_t s, int g, int h,
        long double ld, double m,
        double n, int i, int j, int k) {
    co_yield_ct();
    cout << flag << " " << e << endl;
    cout << flag << " " << f << endl;
    cout << flag << " " << s.a << endl;
    cout << flag << " " << s.b << endl;
    cout << flag << " " << g << endl;
    cout << flag << " " << h << endl;
    cout << flag << " " << ld << endl;
    cout << flag << " " << m << endl;
    cout << flag << " " << n << endl;
    cout << flag << " " << i << endl;
    cout << flag << " " << j << endl;
    cout << flag << " " << k << endl;
}

int pe = 1;
int pf = 2;
structParam_t ps;
int pg = 5;
int ph = 6;
long double pld = 7.0;
double pm = 8.0;
double pn = 9.0;
int pi = 10;
int pj = 11;
int pk = 12;

void *A(void *) {
    ps.a = 3;
    ps.b = 4;
    ps.d = 10.0;
    output("A: ", pe, pf, ps, pg, ph, pld, pm, pn, pi, pj, pk);
    return NULL;
}

void *B(void *) {
    ps.a = 300;
    ps.b = 400;
    ps.d = 1000.0;
    output("B: ", pe, pf, ps, pg, ph, pld, pm, pn, pi, pj, pk);
    return NULL;
}

int main() {
    stCoRoutine_t *co_A = NULL;
    stCoRoutine_t *co_B = NULL;
    co_create(&co_A, NULL, A, NULL);
    co_create(&co_B, NULL, B, NULL);
    co_resume(co_A);
    co_resume(co_B);
    co_resume(co_A);
    co_resume(co_B);
    return 0;
}
