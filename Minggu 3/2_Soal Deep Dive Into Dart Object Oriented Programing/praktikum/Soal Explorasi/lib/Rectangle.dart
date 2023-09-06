import 'package:soal_explorasi/Shape.dart';

class Rectangle implements Shape {
  int? height;
  int? width;

  @override
  int getArea() {
    return height! * width!;
  }

  @override
  int getPerimeter() {
    return 2 * (height! + width!);
  }
}
