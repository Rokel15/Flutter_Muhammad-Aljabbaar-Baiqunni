import 'dart:io';
import 'package:soal_explorasi/Circle.dart';
import 'package:soal_explorasi/Square.dart';
import 'package:soal_explorasi/Rectangle.dart';

void main() {
  Circle circle = Circle();
  Square square = Square();
  Rectangle rectangle = Rectangle();

  //Circle
  stdout.writeln('Circle');
  stdout.write('input radius : ');
  circle.radius = int.parse(stdin.readLineSync().toString());
  stdout.writeln('Luas Circle = ${circle.getArea()}');
  stdout.writeln('Keliling Circle = ${circle.getPerimeter()}');
  stdout.writeln('');

  //Square
  stdout.writeln('Square');
  stdout.write('input side : ');
  square.side = int.parse(stdin.readLineSync().toString());
  stdout.writeln('Luas Square = ${square.getArea()}');
  stdout.writeln('Keliling Square = ${square.getPerimeter()}');
  stdout.writeln('');

  //Rectangle
  stdout.writeln('Rectangle');
  stdout.write('input height : ');
  rectangle.height = int.parse(stdin.readLineSync().toString());
  stdout.write('input width : ');
  rectangle.width = int.parse(stdin.readLineSync().toString());
  stdout.writeln('Luas Rectangle = ${rectangle.getArea()}');
  stdout.writeln('Keliling Rectangle = ${rectangle.getPerimeter()}');
  stdout.writeln('');
}
