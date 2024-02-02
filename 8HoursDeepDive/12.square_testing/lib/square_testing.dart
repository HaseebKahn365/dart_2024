class Square {
  int _sideLength = 0;

  Square.fromLength(int length) {
    if (length <= 0) {
      throw Exception("Side length can't be less than or equal to 0");
    } else {
      _sideLength = length;
    }
  }

  int get area => _sideLength * _sideLength;
  int get parameter => 4 * _sideLength;
}
