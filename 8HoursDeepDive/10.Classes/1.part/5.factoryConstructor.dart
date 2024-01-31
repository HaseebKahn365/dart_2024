import 'dart:math';

void main() {
  Point a = Point.fromRandomIntegerValues();
  Point b = Point.fromRandomIntegerValues();

  print(a.hashCode.toString() + "  " + b.hashCode.toString());
  print(a.toString() + "  " + b.toString());
}

class Point {
  final double x;
  final double y;

  const Point({required this.x, required this.y});

  factory Point.fromRandomIntegerValues() {
    //between -99 and 99
    return Point(x: Random().nextInt(199) - 99, y: Random().nextInt(199) - 99);
  }

  const Point.zero()
      : x = 0,
        y = 0;

  @override
  String toString() {
    return "\nThis is an instance of Point where x = $x and y = $y";
  }
}
