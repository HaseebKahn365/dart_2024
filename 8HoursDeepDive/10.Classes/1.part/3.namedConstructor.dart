class A {
  int a = 9;
  int b = 8;
  A();

  //named constructor for
  A.zero() {
    a = 0;
    b = 0;
  }

  //name constructor for json
  A.fromJson(Map<String, int> json)
      : a = json['a']!,
        b = json['b']!;

  @override
  String toString() {
    return "This is an instance of A  where a = $a and b = $b";
  }
}

void main(List<String> args) {
  var a = A();
  print(a.toString());
  var b = A.zero();
  print(b.toString());
  var c = A.fromJson({"a": 1, "b": 3});
  print(c.toString());
}
