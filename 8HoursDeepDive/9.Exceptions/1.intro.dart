import 'dart:io';

void main(List<String> args) {
  try {
    // int b = 0;
    // var result = 12 ~/ b;
    // print(result);

    //input value from user
    int num;
    print("Enter a number: ");
    num = int.parse(stdin.readLineSync()!);

    if (num < 0) {
      throw NegativeValue(message: "Negative value not allowed");
    } else if (num == 0) {
      2 / num;
    } else {
      throw PositiveValue(message: "Positive value not allowed");
    }
  } catch (e) {
    if (e is NegativeValue) {
      print(e.message);
    } else if (e is PositiveValue) {
      print(e.message);
    } else {
      print(e);
    }
  }
}

class NegativeValue implements Exception {
  final String message;
  NegativeValue({required this.message});
}

class PositiveValue implements Exception {
  final String message;
  PositiveValue({required this.message});
}
