mixin A {
  void method1();
  void method2() {}
}

mixin B {
  void method3();
  void method4();
}

class C with A, B {
  @override
  void method1() {
    print("This is method 1");
  } //all the unimplemented methods of the mixins must be overriden

  @override
  void method3() {
    print("This is method 3");
  }

  @override
  void method4() {
    print("this is method 4");
  }
}

void main() {
  var c = C();
  c.method1();
  c.method2();
  c.method3();
}
