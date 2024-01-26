void main() {
  //from restrictive to non-restrictive
  //dynamic
  dynamic name = "John";
  print(name.runtimeType);

  name = 10;
  print(name.runtimeType);
  name = true;
  print(name.runtimeType);

  //var
  var name2 = "John";
  print(name2.runtimeType);

  // name2 = 10; //error

  final name3;
  name3 = "John"; //initalizable only once cannot be changed later
  //name3 = "haseeb"//error
  print(name3.runtimeType);

  const name4 = "John";

  print("hashcode of name3: ${name3.hashCode} and name4: ${name4.hashCode}"); //same because both are immutable and point to the same memory locations bacuse John is the actual object being stored
  // const a = getvalue(); //errorvalue must be known at compile time
}

int getvalue() {
  return 10;
}
