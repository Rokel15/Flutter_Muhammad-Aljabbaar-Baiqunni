//Buatlah sebuah list dengan spesifikasi berikut:
// 1. Tiap elemen wajib berupa list juga
// 2. tiap element wajib terdapat 2 data(sub-elemen)
// 3. Buatlah sebuah map dengan menggunakan list tersebut
void main() {
  List<List<dynamic>> list = [
    [
      [76, 89],
      [90, 100]
    ]
  ];

  Map<dynamic, dynamic> map = {list[0]: 'Nilai B', list[1]: 'Nilai A'};
}
