//2. Buatlah sebuah program untuk menghitung frekuensi pada setiap data di dalam sebuah list. Frekuensi merupakan jumlah kemunculan data di dalam list.
// Sampel Input: [js,js,js,golang,python,js,js,golang,rust]
// Sampel Output:js: 5, golang: 2, python: 1, rust: 1
import 'dart:io';

void main() {
  List<String> hewan = [
    'js',
    'js',
    'js',
    'golang',
    'python',
    'js',
    'js',
    'golang',
    'rust'
  ];

  Map<String, int> coountMap = menghitungKesamaanElemen(hewan);

  coountMap.forEach((key, value) {
    stdout.write('$key : $value, ');
  });
}

Map<String, int> menghitungKesamaanElemen(List<String> list) {
  Map<String, int> fillMap = {};

  for (String item in list) {
    fillMap[item] = (fillMap[item] ?? 0) + 1;
  }
  return fillMap;
}
