void main() {
  Shape circle = Circle();
  Shape square = Square();
  circle.draw();
  square.draw();
}
class Shape {
  void draw() {
    print("Drawing a shape");
  }
}
class Circle extends Shape {
  @override
  void draw()
  {
    print("Drawing a circle");
  }
}
class Square extends Shape {
  @override
  void draw()
  {
    print("Drawing a square");
  }
}