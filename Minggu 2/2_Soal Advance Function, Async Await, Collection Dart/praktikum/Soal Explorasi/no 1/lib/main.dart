// 1. Buatlah sebuah program untuk menghilangkan nilai atau data yang sama pada sebuah data sehingga output akhirnya adalah sekumpulan nilai atau data yang unik.

// Sampel Input: [amuse, tommy kaira, spoon, HKS, litchfield, amuse, HKS]
// Sampel Output: [amuse, tommy kaira, spoon, HKS, litchfield]

// Sampel Input: [JS Racing, amuse, spoon, spoon, JS Racing, amuse]`
// Sampel Output: [JS Racing, amuse, spoon]

import 'dart:convert';

void main() {
  List input = [
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS'
  ];

  var set = Setter(input);
  var convertList = Converter(set);

  print(convertList);
}

Set Setter(List list) {
  Set setList = Set<String>.from(list);
  return setList;
}

List Converter(Set set) {
  List convertList = set.toList();
  return convertList;
}
