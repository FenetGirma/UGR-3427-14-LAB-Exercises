abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  final circle = Circle(5.0);
  final circleArea = circle.calculateArea();
  print("Circle Area: $circleArea");

  final square = Square(4.0);
  final squareArea = square.calculateArea();
  print("Square Area: $squareArea");
}
