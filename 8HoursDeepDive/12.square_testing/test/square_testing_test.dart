import 'package:square_testing/square_testing.dart';
import 'package:test/test.dart';

void main() {
  group("Expecting 1 unit square and parameter 4 when side length is 1:", () {
    test("Parameter should be 4", () {
      expect(Square.fromLength(1).parameter, 4);
      //expect integer value
    });
    test("The return value should be int", () {
      final A = Square.fromLength(1).parameter;
      expect(A, isA<int>());
    });
    test("Area should be 1", () {
      expect(Square.fromLength(1).area, 1);
    });
  });
}
