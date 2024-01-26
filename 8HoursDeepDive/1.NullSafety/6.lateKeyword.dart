void main() {
  var a = A(a: 10, b: 20);
  a.sum();
  a.printC();
}

class A {
  final int a;
  final int b;
  late final int c;

  A({required this.a, required this.b});

  void sum() {
    c = a + b;
  }

  void printC() {
    print(c);
  }
}
