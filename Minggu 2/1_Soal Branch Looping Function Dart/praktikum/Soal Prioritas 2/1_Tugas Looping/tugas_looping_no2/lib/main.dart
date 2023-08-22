// Buatlah sebuah jam pasir seperti pada gambar dibawah ini
//https://cobalt-bike-c9e.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F487b3dd7-7dfb-4497-adb0-01e72917e138%2FUntitled.png?table=block&id=ec4adbab-cf42-4288-ba20-6741d635b791&spaceId=735d4ca0-4767-45ab-acd3-3d630d4151fd&width=1060&userId=&cache=v2
import 'dart:io';

void main() {
  int potonganAtas = 6;
  int m, n, o;
  for (m = potonganAtas; m >= 2; m--) {
    for (n = potonganAtas - m; n > 0; n--) {
      stdout.write(' ');
    }

    for (o = 1; o <= 2 * m - 1; o++) {
      stdout.write('0');
    }
    stdout.writeln('');
  }

  int potonganBawah = 6;
  int i, j, k;
  for (i = 1; i <= potonganBawah; i++) {
    for (j = potonganBawah - i; j > 0; j--) {
      stdout.write(' ');
    }

    for (k = 1; k <= 2 * i - 1; k++) {
      stdout.write('0');
    }
    stdout.writeln('');
  }
}
