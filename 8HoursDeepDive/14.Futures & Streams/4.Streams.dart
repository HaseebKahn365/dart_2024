void main() {
  var stream = Stream.periodic(Duration(seconds: 1), (x) => x).listen((event) {
    print(event);
  });

  Future.delayed(Duration(seconds: 2), () {
    print("This will be printed after 2 seconds");
  }); //this code is still able to run while the stream is running.

  Future.delayed(Duration(seconds: 5), () {
    stream.cancel(); //this will cancel the stream after 5 seconds because it is on the main thread.
  });
}
