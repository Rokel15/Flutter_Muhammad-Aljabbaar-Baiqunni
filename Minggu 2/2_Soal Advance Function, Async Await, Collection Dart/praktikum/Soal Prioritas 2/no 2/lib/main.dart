// 2. Buatlah sebuah program untuk menghitung rata-rata dari sekumpulan nilai. Lakukan pembulatan keatas untuk nilai hasil perhitungan rata-rata.
// Sampel Input:[7,5,3,5,2,1]
// Sampel Output:4

void main() {
  List value = [92, 94, 86, 84, 90];

  print(value);

  Mean(a: value[0], b: value[1], c: value[2], d: value[3], e: value[4]);
}

void Mean({required a, required b, required c, required d, required e}) {
  double mean = (a + b + c + d + e) / 5;
  print('ratarata = ${mean.ceil()}');
}
