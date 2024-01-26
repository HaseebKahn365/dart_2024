void main(List<String> args) {
  Set a = {1, 2, 3, 4, 5};
  Set b = {1, 2, 3, 4, 5, 6, 7, 8, 9};

  print(a);
  print(b);

  print("union ${a.union(b)}");
  print(a.intersection(b));
  print(a.difference(b));
  print(a.lookup(1));

  Set<int> c = {1, 2, 3, 4, 5};

  c.add(1);
  print(c);

  c.addAll({6, 7, 8, 9});
  print(c);

  var d = <int>{};

  print(d.runtimeType);

  var e = {};
  print(e.runtimeType);
}
