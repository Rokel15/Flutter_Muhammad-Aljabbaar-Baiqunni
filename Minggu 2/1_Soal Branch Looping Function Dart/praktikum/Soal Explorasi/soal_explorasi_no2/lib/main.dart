import 'dart:io';

void main() {
  int i, j;

  for (i = 1; i <= 9; i++) {
    for (j = 1; j <= 9; j++) {
      stdout.write('${i * j} \t');
    }
    stdout.write('\n');
  }
}
