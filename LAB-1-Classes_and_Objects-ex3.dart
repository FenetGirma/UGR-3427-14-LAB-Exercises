class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  var myRectangle = Rectangle(5.0, 3.0);

  double area = myRectangle.calculateArea();
  double perimeter = myRectangle.calculatePerimeter();

  print(
      "Rectangle with width ${myRectangle.width} and height ${myRectangle.height}:");
  print("Area: $area square units");
  print("Perimeter: $perimeter units");
}
