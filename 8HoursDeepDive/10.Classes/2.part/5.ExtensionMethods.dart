import 'dart:math';

extension alter on int {
  int get altered => 134;

  void printAltered() {
    print("Wowow");
  }

  int randomize() {
    return this + Random().nextInt(100).toInt();
  }
}

void main() {
  var a = 10;
  print(a.altered);
  32.printAltered();
  var c = 41.randomize();
  print(c);
}
