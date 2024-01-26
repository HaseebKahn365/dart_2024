void main(List<String> args) {
  var a = first;

  printer(a);
}

void printer(Function a) {
  print(a(200));
}

int first(int a) {
  return a;
}
