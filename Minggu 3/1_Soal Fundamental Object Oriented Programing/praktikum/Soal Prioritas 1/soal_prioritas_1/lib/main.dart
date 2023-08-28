import 'dart:io';

void main() {
  Hewan hewan = Hewan();
  Mobil mobil = Mobil();

  stdout.writeln('maximal berat hewan: ${mobil.totalMaxBerat}');
  mobil.tambahMuatan(hewan.beratHewan);
  mobil.totalMuatan();
}

class Hewan {
  int beratHewan = 140;
}

class Mobil {
  int totalMaxBerat = 1500;
  List<int> hewan = [];

  int totalBeratHewan = 0;

  void tambahMuatan(int hewan) {
    if (hewan < totalMaxBerat) {
      this.hewan.add(hewan);
    }
  }

  void totalMuatan() {
    print('berat hewan : $hewan');
  }
}
