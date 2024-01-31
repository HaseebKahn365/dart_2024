void main(List<String> args) {
  var first = A();
  first
    ..a = 21
    ..toString()
    ..a = 12
    ..printer()
    ..a = 13
    ..a = 93
    ..a = 13
    ..printer();
}

class A {
  int a = 19;

  printer() {
    print("Value of a  = $a");
  }
}
