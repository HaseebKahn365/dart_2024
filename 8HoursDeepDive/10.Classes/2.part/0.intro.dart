void main() {
  Car c1 = Car(name: "Tasatay");
  Tesla t1 = Tesla("Model S");
  print(t1 as Car);
  print(c1 is Tesla);
  print(t1 as Tesla);
}

class Car {
  final String name;
  Car({required this.name});

  @override
  String toString() {
    return "This is an instance of Car with name: $name";
  }
}

class Tesla extends Car {
  Tesla(String n) : super(name: n);

  @override
  String toString() {
    return super.toString() + " from sub class";
  }
}
