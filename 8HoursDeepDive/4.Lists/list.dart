//ordered group

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(numbers);
  print(numbers[0]);

  //all combinations of nullability:
  //nullable list with non nullable elements

  // List<int>? nullableList;
  // print(nullableList);

  // //nullable list with nullable elements
  // List<int?>? nullableList2 = [];
  // print(nullableList2);

  // //non nullable list with nullable elements
  // List<int?> nonNullableList = [null, 1, 2, 3];
  // print(nonNullableList[3]);

  // //non nullable list with non nullable elements
  // List<int> nonNullableList2 = [1, 2, 3];
  // print(nonNullableList2[2]);

  //common list methods
  List a = List.generate(3, (index) => (index + 1));
  print(a);

  a = [...a, 4, 4, 5];
  print(a);

  a.add(6);
  print(a);

  a.addAll([7, 8, 9]);
  print(a);

  a.insert(0, 0);
  print(a);

  a.insertAll(0, [-1, -2, -3]);
  print(a);

  a.remove(0);
  print(a);

  a.removeAt(0);
  print(a);

  a.removeLast();
  print(a);

  a.removeRange(0, 8);
  print(a);

  a.removeWhere((element) => element == 4);

  a.removeWhere((element) {
    if (element == 5) {
      return true;
    } else {
      return false;
    }
  });

  print(a);

  a.removeWhere((element) => element == 6 || element == 7);
  print(a);

  print(a.length);

  a.clear();
  print(a);
}
