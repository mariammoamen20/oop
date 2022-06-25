//parent class
import 'dart:io';
import 'dart:math';

abstract class Shape {
  int width;

  int height;

  Shape(this.height, this.width);

  void draw();

  /*double calculateArea() {
    return 0;
  }*/
  double calculateArea();
}

//child class
class Triangle extends Shape {
  Triangle(int height, int width) : super(width, height);

  @override
  void draw() {
    for (int i = 0; i < height; i++) {
      for (int j = 0; j <= i; j++) {
        stdout.write('*');
      }
      print('');
    }
  }

  @override
  double calculateArea() {
    return 0.5 * width * height;
  }
}

//child class
class Rectangle extends Shape {
  Rectangle(int width, int height) : super(width, height);

  @override
  double calculateArea() {
    return (width * height).toDouble();
  }

  @override
  void draw() {
    for (int i = 0; i < height; i++) {
      for (int j = 0; j < width; j++) {
        stdout.write('*');
      }
      print('');
    }
  }
}

void main() {
  //Shape shape = Shape(7,8);
  Triangle triangle = Triangle(5, 4);
  double t = triangle.calculateArea();
  print(t);
  triangle.draw();
  print('------');

  Rectangle rectangle = Rectangle(8, 9);
  double r = rectangle.calculateArea();
  print(r);
  rectangle.draw();

  print('------');
  // Shape shape = Triangle(51, 1);
  // print(shape.calculateArea()); //
}
