class BangunRuang {
  int? panjang;
  int? lebar;
  int? tinggi;

  int volume() {
    return 0;
  }
}

class Kubus extends BangunRuang {
  int? sisi;

  @override
  int volume() {
    return sisi! * sisi! * sisi!;
  }
}

class Balok extends BangunRuang {
  @override
  int volume() {
    return panjang! * lebar! * tinggi!;
  }
}

void main() {
  Kubus kubus = Kubus();
  Balok balok = Balok();

  kubus.sisi = 8;
  print('volume kubus : ${kubus.volume()}');

  balok.panjang = 12;
  balok.lebar = 4;
  balok.tinggi = 4;
  print('volume balok :  ${balok.volume()}');
}
