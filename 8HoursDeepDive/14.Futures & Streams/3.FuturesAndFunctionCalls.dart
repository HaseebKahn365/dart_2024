void main() async {
  var a;
  a = await geta();
  print(a);
}

Future<int> geta() {
  final a = Future.delayed(Duration(seconds: 2), () => 10);
  return a;
}
