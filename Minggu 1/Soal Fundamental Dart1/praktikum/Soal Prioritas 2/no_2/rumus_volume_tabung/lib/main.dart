//Implementasikan rumus volume dari tabung (silinder) dengan menggunakan Bahasa Dart.
import 'dart:io';

void main() {
  int jarijari = 14;
  int tinggi_tabung = 50;
  double rumus_volume_tabung = (22 / 7 * jarijari * jarijari) * tinggi_tabung;

  stdout.write('volume tabung = $rumus_volume_tabung');
}
