void main() {
  var Person1 = Person();
  try {
    Person1.intializeAge = 2099;
  } on FromFutureException catch (e) {
    print(e.message);
  } finally {
    Person1.intializeAge = 1999;
    print("You have been respawned with age: " + Person1.age.toString());
  }
}

class Person {
  late int age;

  set intializeAge(int birthYear) {
    //the parameter value is passed using = operator in the main function
    if (birthYear > DateTime.now().year) {
      throw FromFutureException(message: "You are not born yet");
    }
    age = DateTime.now().year - birthYear;
  }
}

class FromFutureException implements Exception {
  final String message;
  FromFutureException({required this.message});
}
