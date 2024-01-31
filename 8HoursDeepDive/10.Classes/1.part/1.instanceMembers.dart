class A {
  static const double a = 3.1415;
  static late final int b = 10;
  A() {
    print("This is the default constructor");
  }

  //static members require getters
  double get valueOfa {
    return a;
  }

  int get valueOfb {
    return b;
  }
}

void main(List<String> args) {
  // var first = A();
  // print(first.valueOfa);
  // print(first.valueOfb);
  // print(A().valueOfa);
  print(A().hashCode.toString() + "  " + A().hashCode.toString());
}
