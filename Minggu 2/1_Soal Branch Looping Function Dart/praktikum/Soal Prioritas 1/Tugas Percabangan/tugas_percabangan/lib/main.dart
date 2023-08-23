// 1. Terdapat sebuah nilai:
//     1. jika nilai > 70 akan mereturn “Nilai A”
//     2. jika nilai > 40 akan mereturn “Nilai B”
//     3. jika nilai > 0 akan mereturn “Nilai C”
//     4. selain itu return teks kosong
import 'dart:io';

void main() {
  double? nilai;
  stdout.write('Input nilai : ');
  nilai = double.parse(stdin.readLineSync().toString());

  if (nilai > 70) {
    stdout.write('Nilai A');
  } else if (nilai > 40) {
    stdout.write('Nilai C');
  } else if (nilai > 0) {
    stdout.write('Nilai C');
  } else {
    stdout.write('');
  }
}
