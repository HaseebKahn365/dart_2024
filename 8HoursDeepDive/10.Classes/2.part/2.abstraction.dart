abstract class Animal {
  String name;
  Animal({required this.name});

  void eat();
  void drink();
}

class Lion implements Animal {
  @override
  String name;

  // Lion(String s): super.name = s; this is not allowed because we are implementing not extending
  Lion(this.name);

  @override
  void drink() {
    print("Lion is drinking");
  }

  @override
  void eat() {
    print("Lion is eating");
  }
}

class Human implements Animal {
  String name;

  Human({required this.name});

  @override
  void drink() {
    print("Human is drinking water");
  }

  @override
  void eat() {
    print("Human is eating food");
  }
}

class Object {
  String name;
  Object({required this.name});

  void purpose() {
    print("I am an object");
  }
}

class Car implements Object {
  //this is done using the implicit interface
  @override
  String name;

  Car({required this.name});

  @override
  void purpose() {
    print("I am Haseeb's favorite car. i can be used for transportation");
  }
}

void main() {
  Lion l1 = Lion("Haseeb");
  Human h1 = Human(name: "Haseeb");
  l1.drink();
  l1.eat();
  h1.drink();
  h1.eat();
  Car c1 = Car(name: "Tesla");
  c1.purpose();
}
