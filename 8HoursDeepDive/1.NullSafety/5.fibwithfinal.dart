void main(List<String> args) {
  print(fib(40));
}

int fib(int num) {
  final number = num;
  if (number < 2) return number;
  return fib(number - 1) + fib(number - 2);
}
