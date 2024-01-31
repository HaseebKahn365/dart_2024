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
  A() : b = 1 //this is the intializer list.
  {
    a = 21;
  } //default constructor
  int a = 19;
  final int b;

  printer() {
    print("Value of a  = $a");
  }
}
