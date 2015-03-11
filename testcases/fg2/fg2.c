int f(int v) {
    return v + 1;
}
int g(int v) {
    if (v > 1) {
        return g(v - 1);
    } else {
        return f(v);
    }
}
int main() {
    int t1, t2, t3;
    t1 = g(0);
    t2 = g(243);
    t3 = g(255);
}
