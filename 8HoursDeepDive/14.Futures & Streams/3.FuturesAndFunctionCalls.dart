void main() async {
  var a;
  a = await geta(); //a future must be awaited to get the value
  print(a);
}

Future<int> geta() {
  final a = Future.delayed(Duration(seconds: 2), () => 10);
  return a;
}
