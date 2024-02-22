
import 'dart:math';

void shapes() {
  Circle c = Circle(5);
  c.getArea();
  print("****************************");
  Rectangle r = Rectangle(5,4);
  r.getArea();
  print("****************************");
  Triangle t = Triangle(5,4);
  t.getArea();
  print("****************************");
  FilledCircle fc = FilledCircle(5);
  fc.defineMe();
  print("****************************");
}

abstract class Shape {
  late String name;
  void getArea();
}


class Circle extends Shape {
  late int raduis;
  Circle(int r){
    raduis = r;
    name = "Circle";
  }
    @override
  void getArea() {
    double area = pow(raduis,2)*pi;
    print (area);
  }
}

class Rectangle extends Shape {
  late int length,width;
  Rectangle(int l,int w){
    length = l;
    width = w;
    name = "Rectangle";
  }
    @override
  void getArea() {
    int area = width * length;
    print (area);
  }
}

class Triangle extends Shape {
  late int base,hieght;
  Triangle(int b,int h){
    base = b;
    hieght = h;
    name = "Rectangle";
  }
    @override
  void getArea() {
    double area = base  * hieght * 0.5;
    print (area);
  }
}

abstract class Fill {
  void filled () => print("it is a filled shape");
}

class FilledCircle extends Circle with Fill {
  FilledCircle(int r): super(r);
  void defineMe (){
    print("This is a circle with area of");
    getArea();
    filled();
  }

}

