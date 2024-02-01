class Animal {
  String name;
  Animal({required this.name});

  void hunt(Animal n) {
    print("$name is hunting ${n.name}");
  }
}

class Lion extends Animal {
  Lion(String n) : super(name: n);

  // void hunt(Lion n){ //tightning the type is not allowed
  //   print("$name is hunting ${n.name}");
  // }

  void hunt(covariant Animal n) {
    print(this.name + " is hunting " + n.name);
  }
}

void main() {
  Lion l1 = Lion("Haseeb");
  l1.hunt(Animal(name: "deer"));
}
