void main(List<String> args) {
  Function a = filterEvens; //here a is called closure
  printer(a);
}

void printer(Function a) {
  // List<int> newList = a([1, 34, 5, 1, 34, 65, 23, 66]);
  List<int> newList = a([]);

  newList = newList.map((e) => e * 10).toList();

  print(newList);
}

List<int> filterEvens(List<int> all) {
  List<int> temp = [];
  for (var item in all) {
    if ((item) % 2 == 0) {
      temp.add(item);
    }
  }
  return temp;
}
