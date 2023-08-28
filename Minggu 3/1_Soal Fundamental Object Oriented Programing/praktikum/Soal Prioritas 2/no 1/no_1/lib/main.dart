import 'dart:io';

void main() {
  stdout.write('input angka : ');
  double a = double.parse(stdin.readLineSync().toString());

  stdout.write('input angka : ');
  double b = double.parse(stdin.readLineSync().toString());

  Calculator calculator = Calculator(a: a, b: b);

  stdout.writeln('penjumlahan $a + $b = ${calculator.penjumlahan()}');
  stdout.writeln('penjumlahan $a + $b = ${calculator.pengurangan()}');
  stdout.writeln('penjumlahan $a + $b = ${calculator.perkalian()}');
  stdout.writeln('penjumlahan $a + $b = ${calculator.pembagian()}');
}

class Calculator {
  double a;
  double b;
  Calculator({
    required this.a,
    required this.b,
  });

  double penjumlahan() {
    return a + b;
  }

  double pengurangan() {
    return a - b;
  }

  double perkalian() {
    return a * b;
  }

  double pembagian() {
    return a / b;
  }
}
