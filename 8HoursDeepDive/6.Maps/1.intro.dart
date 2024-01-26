void main(List<String> args) {
  var a = {1: 'Haseeb', 2: null, 3: 3.2};

  var b = {null: 32, 2: 'Haseeb', 3: 3.2, 2.2: 5};

  print(a.runtimeType);
  print(b.runtimeType);

  a.forEach((key, value) {
    print('$key $value');
  });

  print(a[1]);

  print(a.containsKey(1));
  print(a.containsValue('Haseeb'));

  print(a.entries);
  var k = a.entries.map((e) => e.value);
  print(k);

  print(a.values);
}
