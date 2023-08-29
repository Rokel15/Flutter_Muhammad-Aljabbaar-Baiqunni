import 'dart:io';

void main() {
  //menampilkan buku tersedia
  stdout.writeln('Buku Tersedia :');
  for (var buku in bukuTersedia) {
    stdout.writeln('id : ${buku.id}');
    stdout.writeln('judul : ${buku.judul}');
    stdout.writeln('penerbit : ${buku.penerbit}');
    stdout.writeln('harga : ${buku.harga}');
    stdout.writeln('');
  }

  Fungsi fungsi = Fungsi();

  //tambah buku
  fungsi.tambah(bukuTersedia);

  //hapus buku dengan id 3
  fungsi.hapus(2);

  //menampilkan kembali buku yang terseidia
  stdout.writeln('Buku Tersedia :');
  for (var buku in bukuTersedia) {
    stdout.writeln('id : ${buku.id}');
    stdout.writeln('judul : ${buku.judul}');
    stdout.writeln('penerbit : ${buku.penerbit}');
    stdout.writeln('harga : ${buku.harga}');
    stdout.writeln('');
  }
}

class Book {
  int id;
  String judul;
  String penerbit;
  int harga;

  Book({
    required this.id,
    required this.judul,
    required this.penerbit,
    required this.harga,
  });
}

List bukuTersedia = [
  Book(
      id: 1,
      judul: 'Pemrograman Android Dengan FLutter',
      penerbit: 'Informatika',
      harga: 130000),
  Book(
      id: 2,
      judul: 'Membangun Aplikasi Android dengan Flutter',
      penerbit: 'Informatika',
      harga: 80000),
  Book(
      id: 3,
      judul: 'Network: Tweaking dan Hacking',
      penerbit: 'Elex Media Komputindo',
      harga: 75000),
  Book(
      id: 4,
      judul: 'Cisco CCNP Materi Encore dan Enarsi',
      penerbit: 'Informatika',
      harga: 120000)
];

class Fungsi {
  void tambah(List list) {
    list.add(Book(
        id: 5,
        judul: 'Firebase Membangun Aplikasi Android',
        penerbit: 'Penerbit ANDI',
        harga: 57000));
  }

  void hapus(int index) {
    bukuTersedia.removeAt(index);
  }
}
