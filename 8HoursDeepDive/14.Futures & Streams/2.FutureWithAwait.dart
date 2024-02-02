void main() async {
  late var a;

  await Future(() => 10).then(
    (value) {
      a = value;
    },
  );

  print(a);

  int b = 12;
  print(b);
}
