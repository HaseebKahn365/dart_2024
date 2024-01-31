void main() {
  var person1 = Person();
  try {
    person1.intializeAge = 2002;
    print(person1.age.toString());
  } on FromFutureException catch (e) {
    print(e.message);
  } finally {
    person1.intializeAge = 1999;
    print("You have been respawned with age: " + person1.age.toString());
  }
}

class Person {
  late int age;

  set intializeAge(int birthYear) {
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
