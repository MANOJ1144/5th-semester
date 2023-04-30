abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

void main() {
  Circle circle = Circle(10);
  Rectangle rectangle = Rectangle(10, 5);
  print('Area of Circle:  ${circle.area()}');
  print('Area of Rectangle:  ${rectangle.area()}');
}
