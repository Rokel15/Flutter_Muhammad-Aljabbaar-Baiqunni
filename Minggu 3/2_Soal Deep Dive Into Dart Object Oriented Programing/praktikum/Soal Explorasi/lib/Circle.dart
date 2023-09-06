import 'package:soal_explorasi/Shape.dart';

class Circle implements Shape {
  int? radius;

  @override
  int getArea() {
    return (3.14 * radius! * radius!).ceil(); //membulatkan ke angka yang besar
  }

  @override
  int getPerimeter() {
    return (3.14 * 2 * radius!).ceil(); //membulatkan ke angka yang besar
  }
}
