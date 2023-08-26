void main() {
  int input = 7;
  print('angka input : $input');
  print('faktorial $input = ${faktorial(input)}');
}

int faktorial(x) {
  if (x == 0) return 1;
  return x * faktorial(x - 1);
}
