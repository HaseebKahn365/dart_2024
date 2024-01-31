void main() {
  Point a = Point(x: 1, y: 2);
  Point b = const Point.zero();
  Point c = const Point.zero();
  print(a.hashCode.toString() + "  " + b.hashCode.toString() + "  " + c.hashCode.toString());

  Point d = a - b;
  print(d.toString());
}

class Point {
  final double x;
  final double y;

  const Point({required this.x, required this.y});

  const Point.zero()
      : x = 0,
        y = 0;

  Point operator +(Point other) {
    return Point(x: this.x + other.x, y: this.y + other.y);
  }

  Point operator -(Point other) {
    return Point(x: this.x - other.x, y: this.y - other.y);
  }

  @override
  String toString() {
    return "\nThis is an instance of Point where x = $x and y = $y";
  }
}
