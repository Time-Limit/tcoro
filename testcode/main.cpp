#include <bits/stdc++.h>

using namespace std;

typedef struct {
    int a, b;
    double d;
} structParam_t;

void A(int e, int f,
        structParam_t s, int g, int h,
        long double ld, double m,
        double n, int i, int j, int k) {
    cout << "A " << e << endl;
    cout << "A " << f << endl;
    cout << "A " << s.a << endl;
    cout << "A " << s.b << endl;
    cout << "A " << g << endl;
    cout << "A " << h << endl;
    cout << "A " << ld << endl;
    cout << "A " << m << endl;
    cout << "A " << n << endl;
    cout << "A " << i << endl;
    cout << "A " << j << endl;
    cout << "A " << k << endl;
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


int main() {
    ps.a = 3;
    ps.b = 4;
    ps.d = 10.0;
    A(pe, pf, ps, pg, ph, pld, pm, pn, pi, pj, pk);
    return 0;
}
