// To run not in production and to see the assert error:
// dart --enable-asserts 01-dart-intro/08_getters_setters.dart

void main() {
  final mySquare = Square(side: 10.0);

  print("Area: ${mySquare.calculateArea()}");

  print("Area: ${mySquare.area}");
}

class Square {
  // Public
  // double side;

  // Private
  double _side;

  Square({required double side})
      : assert(side >= 0, "Side can't be less or equal to 0"),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    if (value <= 0) throw ("Side can't be less or equal to 0");
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
