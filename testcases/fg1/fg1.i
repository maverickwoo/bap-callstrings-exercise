# 1 "fg1.c"
# 1 "/home/maverick/fg1//"
# 1 "<command-line>"
# 1 "fg1.c"
int f(int v) {
    return v + 1;
}
int g(int v) {
    return f(v);
}
int main() {
    int t1, t2, t3;
    t1 = g(0);
    t2 = g(243);
    t3 = g(255);
}
