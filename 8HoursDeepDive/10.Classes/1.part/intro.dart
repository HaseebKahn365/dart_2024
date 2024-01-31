void main(List<String> args) {
  var first = A();
  var second = A();
  print("These are identical : " + identical(first, second).toString() + " with hashes: " + first.hashCode.toString() + " " + second.hashCode.toString());

  // var third = const A(); the default constructor is not constant
  // var fourth = const A();
  var third = const A();
  var fourth = const A();
  print(third);
  print("These are identical : " + identical(third, fourth).toString() + " with hashes: " + third.hashCode.toString() + " " + fourth.hashCode.toString());
}

class A {
  const A();
  //the hashcode and the all the related content is present in the object class.
  //the const constructor is only allowed for constant members or the ones marked final.

  @override
  String toString() {
    return "This is an instance of A";
  }
}
