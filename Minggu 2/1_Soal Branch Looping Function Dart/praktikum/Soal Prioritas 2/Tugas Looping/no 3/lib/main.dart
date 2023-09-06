// tampilkan faktorial dari nilai nilai dibawah in:
// 1. 10
// 2. 40
// 3. 50
import 'dart:io';

void main() {
  stdout.write('input angka : ');

  int i;
  int input = int.parse(stdin.readLineSync().toString());

  for (i = 1; i <= input; i++) {
    if (input % i == 0) {
      stdout.writeln(i);
    }
  }
}
