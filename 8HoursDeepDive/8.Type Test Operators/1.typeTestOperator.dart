void main(List<String> args) {
//  as, is ,is!,

  dynamic a = 5;
  if (a is int) {
    print('The professy is true');
  }

  dynamic c = B(12);

  c as A;
  c.printer();
}

class A {
  int a = 5;

  void printer() {
    print("print from A");
  }
}

class B extends A {
  late int b;
  B(int n) {
    b = n;
  }
}
