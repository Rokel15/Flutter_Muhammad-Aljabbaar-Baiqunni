void main() {
  int piramid = 8;
  int i, j, k;

  for (i = 1; i <= piramid; i++) {
    for (j = 1; j <= piramid - i; j++) {
      print(' ');
    }

    for (int k = 1; k <= 2 * i - 1; k++) {
      print('*');
    }
    print('');
  }
}
