import 'dart:io';

class A {
  static int a = 99;
  static late final int b;
  A();

  factory A.fromUserInput() {
    print("Enter a value for a");
    b = int.parse(stdin.readLineSync()!);
    return A();
  }
}

void main() {
  var first = A.fromUserInput();
  if (0 == 1) print(first);

  print(A.a.toString() + "  " + A.b.toString());
}
