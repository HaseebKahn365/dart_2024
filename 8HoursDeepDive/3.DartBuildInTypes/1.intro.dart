num a = 23;
void main(List<String> args) {
  print("it is odd: ${(a as int).isOdd}");

  var b = a.toString();
  print(" $a ${b.runtimeType}");

  //list of doubles
  var list = [10.2, 22.5, 5.2];
  //clamping and printing
  for (var item in list) {
    print(item.clamp(10, 20));
  }

  //we use the ~/ operatoor for the integer quotient
  print(10.5 ~/ 3.2);
  print(10.5 % 3.2); //0.8999999999999995
  print(10.5.remainder(3.2)); //0.8999999999999995
  print(1 ~/ 3); //0
  print(1 % 3);
  print(1 / 3); //0.3333333333333333
}
