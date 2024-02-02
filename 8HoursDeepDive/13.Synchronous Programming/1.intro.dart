void main() {
  print("First line, sum" + (2 + 3).toString());
  print("Second line, sum" + (2 + 3).toString());
  print("Third line, sum" + (2 + 3).toString());
  Future.delayed(Duration(seconds: 1), () {
    print("Fourth line, sum" + (2 + 3).toString());
  });

  //dart is single threaded
  //the garbage collection is handled by the helper thread.

  Future<int>.delayed(Duration(seconds: 5), () {
    return 5;
  }).then((value) => print(value.toString() + "the last line to be calculated after 5 seconds"));
  print("Fifth line, sum" + (2 + 3).toString());

  //the above lines are processed in sequence and are not tackled in async manner.
  //the futures are not waiting for, by the next line to be executed.

  //there is only one isolate in dart, which is the main isolate.

  //there is a mutator thread and the microtask queue.
  //the microtask queue is processed before the mutator thread when it comes to futures.
}
