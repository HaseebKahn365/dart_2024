void main() {
  //introduction to the constructors of the Future class

  //default factory constructor
  Future(() => 10).then(print);
  Future(() => 15).then(print);

  //Future.value constructor
  Future.value(20).then(print);
}
