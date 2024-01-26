void main(List<String> args) {
  int a = 10;
  List<int> b = [1, 2, 3, 4, 5];

  List<int> c = b.map((e) => e * a).toList(); //this is becuase the map returns an iterable so we need to convert it to list

  print(c);

  //the .. operator
  var d = c.reversed.toList()
    ..add(100)
    ..add(200)
    ..add(300)
    ..add(400)
    ..add(500);

  print(d);

  // collection if and for
  bool should = true;

  d = [
    ...d,
    if (should) ...[1, 2, 3, 4, 5],
    for (var item in d) item * 10,
  ];
  print(d);
}
