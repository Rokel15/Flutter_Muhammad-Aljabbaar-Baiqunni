/*Buatlah sebuah program untuk mencari faktor dari sebuah bilangan yang dimasukkan.
Sampel Input: `24`
Sampel Output:
1
2
3
4
6
8
12*/

import 'dart:io';

void main() {
  stdout.write('Input angka : ');
  int input = int.parse(stdin.readLineSync().toString());

  for (int i = 1; i <= input; i++) {
    if (input % i == 0) {
      stdout.writeln(i);
    }
  }
}
