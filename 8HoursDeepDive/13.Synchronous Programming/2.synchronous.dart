void main() {
  print("First line");

  Future(() => print("Second line"));
  Future(() => print("Third line"));
  Future(() => print("Fourth line"));

  print("Fifth line");

  //the above lines are processed in sequence and are not tackled in async manner.
  //Expcted output: first, fifth, second, third, fourth
}
