import 'package:soal_explorasi/Shape.dart';

class Square implements Shape {
  int? side;

  @override
  int getArea() {
    return side! * side!;
  }

  @override
  int getPerimeter() {
    return 4 * side!;
  }
}
