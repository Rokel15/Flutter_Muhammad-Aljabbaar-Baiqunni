import 'dart:io';

class Matematika {
  int hasil(x, y) {
    return 0;
  }
}

class Kpk implements Matematika {
  Fpb fpb = Fpb();
  int? x, y;

  @override
  int hasil(x, y) {
    return (x * y ~/ fpb.hasil(x, y));
  }
}

class Fpb implements Matematika {
  @override
  int hasil(x, y) {
    return (y == 0) ? x : hasil(y, x % y);
  }
}

void main() {
  Fpb fpb = Fpb();
  Kpk kpk = Kpk();

  int x, y;

  stdout.write('input angka : ');
  x = int.parse(stdin.readLineSync().toString());

  stdout.write('input angka : ');
  y = int.parse(stdin.readLineSync().toString());

  //mencari FPB
  stdout.writeln('FPB = ${fpb.hasil(x, y)}');

  //mencari KPK
  stdout.write('KPK = ${kpk.hasil(x, y)}');
}
