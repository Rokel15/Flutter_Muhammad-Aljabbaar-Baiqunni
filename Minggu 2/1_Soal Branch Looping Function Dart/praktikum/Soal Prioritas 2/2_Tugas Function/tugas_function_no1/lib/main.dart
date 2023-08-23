// 1. Buatlah sebuah function dengan parameter untuk menghitung luas lingkaran. kemudian function lingkaran tersebut dijalankan pada function main!

import 'dart:io';

void main() {
  stdout.write('Masukkan jarijari lingkaran : ');
  double jarijari = double.parse(stdin.readLineSync().toString());

  double hasil = luas_lingkaran(jarijari);
  stdout.write('Luas lingkaran = ');
  stdout.write(hasil);
}

double luas_lingkaran(r) {
  double rumus = 3.14 * r * r;
  return rumus;
}
