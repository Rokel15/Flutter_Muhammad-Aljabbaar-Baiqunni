//Buatlah rumus keliling dan luas persegi dan persegi panjang dengan menggunakan bahasa pemrograman Dart
import 'dart:io';

void main() {
  stdout.write('Rumus luas persegi = ');
  luas_persegi();
  stdout.write('Rumus keliling persegi = ');
  keliling_persegi();
  print('');
  stdout.write('Rumus luas persegi panjang = ');
  luas_persegi_panjang();
  stdout.write('Rumus keliling persegi panjang = ');
  keliling_persegi_panjang();
}

void luas_persegi() {
  String luas_persegi = "sisi * 2";
  stdout.writeln('$luas_persegi');
}

void keliling_persegi() {
  String rumus_keliling_persegi = "sisi * 4";
  stdout.writeln('$rumus_keliling_persegi');
}

void luas_persegi_panjang() {
  String luas_persegi_panjang = "P * L";
  stdout.writeln('$luas_persegi_panjang');
}

void keliling_persegi_panjang() {
  String rumus_keliling_persegi_panjang = "(2 * P) + ( 2 * L)";
  stdout.writeln('$rumus_keliling_persegi_panjang');
}
