/*Buatlah sebuah program untuk mengecek apakah sebuah kata merupakan sebuah palindrom atau bukan.
Palindrom adalah sebuah kata yang jika dibalik dari kata aslinya memiliki cara baca atau susunan yang sama persis.
Sampel Input: `kasur rusak`
Sampel Output: `palindrom`
Penjelasan: kata `kasur rusak` jika dibalik adalah `kasur rusak` sehingga kata ini merupakan kata palindrom.
Sampel Input: `mobil balap`
Sampel Output: `bukan palindrom` 
Penjelasan: kata `mobil balap` jika dibalik adalah `palab libom` sehingga kata ini bukan palindrom karena ketika dibalik cara membacanya menjadi berbeda.*/

import 'dart:io';

void main() {
  stdout.write('Input string = ');
  String inputStr = stdin.readLineSync().toString();
  String reverseString = "";

  int stringLength = inputStr.length;

  for (int i = (stringLength - 1); i >= 0; --i) {
    reverseString = reverseString + inputStr[i];
  }

  if (inputStr == reverseString) {
    stdout.writeln('${inputStr} is palindrom');
  } else {
    stdout.writeln('bukan palindrom');
  }
}
