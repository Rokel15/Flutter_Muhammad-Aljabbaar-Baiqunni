// Buatlah sebuah piramid bintang seperti gambar dibawah ini
// https://cobalt-bike-c9e.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fd6af7940-5b3a-4b75-b362-f95301f72098%2FUntitled.png?table=block&id=b78f9a22-c54c-4f6a-b693-b44441a34846&spaceId=735d4ca0-4767-45ab-acd3-3d630d4151fd&width=620&userId=&cache=v2
import 'dart:io';

void main() {
  int piramid = 8;
  int i, j, k;
  for (i = 1; i <= piramid; i++) {
    for (j = piramid - i; j > 0; j--) {
      stdout.write(' ');
    }

    for (k = 1; k <= 2 * i - 1; k++) {
      stdout.write('*');
    }
    stdout.writeln('');
  }
}
