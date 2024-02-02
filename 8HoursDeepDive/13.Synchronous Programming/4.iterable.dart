void main() {
  // Iterable is a collection of elements that can be accessed sequentially.
  // Iterable is an abstract class, so it can't be instantiated directly. and is lazily construted
  // Iterable is the base class for all the collection classes in dart

  //the iterator is the object that allows us to access the elements of the collection one by one
  //using the next() method and the current element using the current property. ie. iterator(current, next());

  //an iterator can be used to genenrate a sequence of values, one at a time synchronously.

  // var list = genrateAndReturn(); //constructed without being used

  // var iterableList = genrateAndReturnIterable(); //not constructed until used

  // print("List is $iterableList");
}

List<int> genrateAndReturn() {
  final List<int> list = [];

  for (int i = 0; i < 10; i++) {
    print("adding ${i + 1}");
    list.add(i + 1);
  }

  return list;
}

Iterable<int> genrateAndReturnIterable() sync* {
  for (int i = 0; i < 10; i++) {
    print("yielding ${i + 1}");
    yield i + 1;
  }
}
