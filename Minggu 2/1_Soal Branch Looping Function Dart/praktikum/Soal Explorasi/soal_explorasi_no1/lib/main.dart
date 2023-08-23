//1. Buatlah sebuah program untuk mengecek apakah sebuah bilangan termasuk bilangan prima atau bukan.
// Sampel Input: 23
// Sampel Output: bilangan prima

// Sampel Input: 12
// Sampel Output: bukan bilangan prima
import 'dart:io';

void main() {
  stdout.write('masukkan angka : ');
  int input = int.parse(stdin.readLineSync().toString());

  if (cek_angkaPrima(input)) {
    stdout.write('$input adalah bilangan prima');
  } else {
    stdout.write('$input bukan bilangan prima');
  }
}

bool cek_angkaPrima(int input) {
  if (input <= 1) {
    return false;
  }

  for (int i = 2; i < input; i++) {
    if (input % i == 0) {
      return false;
    }
  }

  return true;
}
