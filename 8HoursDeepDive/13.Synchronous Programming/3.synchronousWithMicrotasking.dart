void main() {
  print("First line");

  Future(() {
    print("Second line");
    Future(() {
      print("Second line, nested future");
    });
    Future.microtask(() {
      print("Second line, microtask");
    });

    print("Second line, after microtask");
  });

  print("Third line");
}
