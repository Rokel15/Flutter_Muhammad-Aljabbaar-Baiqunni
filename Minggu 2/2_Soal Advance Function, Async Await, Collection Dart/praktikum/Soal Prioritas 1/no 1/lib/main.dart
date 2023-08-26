void main() async {
  List<int> himpunan = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  int pengali = 2;

  ListMultiplier(himpunan, pengali);
}

void ListMultiplier(List data, int pengali) {
  for (var list in data) {
    print(data[list] * 2);
  }
  ;
}
