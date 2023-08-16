import 'dart:io';

void main() {
  int jarijari = 7;
  int diameter = jarijari * 2;

  double rumus_luas_lingkaran = 22 / 7 * jarijari * jarijari;
  double rumus_keliling_lingkaran = 22 / 7 * diameter;

  stdout.writeln('jarijari lingkaran = ' + '$jarijari');
  stdout.writeln('Luas lingkaran = $rumus_luas_lingkaran');
  stdout.write('Luas lingkaran = $rumus_keliling_lingkaran');
}
