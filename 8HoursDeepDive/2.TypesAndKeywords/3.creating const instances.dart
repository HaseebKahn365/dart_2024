class A {
  final int a;

  const A({required this.a});
}

void main() {
  // A first = A(a: 1);
  // A second = A(a: 1);

  // print(identical(first, second)); // false because they are different instances

  const A first = A(a: 1);
  const A second = A(a: 1);

  print(identical(first, second)); // true because they are same instances

  A third = const A(a: 1);
  A fourth = const A(a: 1);

  print(identical(third, fourth)); // true because they are same instances
}
