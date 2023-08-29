# Resume Materi KMFlutter – Branching – Looping – Function
## Tuliskan 3 poin yang dipelajari dari materi tersebut. Resume / ringkasan materi dapat disubmit melalui Github, sesuai intruksi yang ada di link berikut [LINK](https://cobalt-bike-c9e.notion.site/Cara-Pengumpulan-2b2224b8ba0b4dd78774084a65c0154d)
1. If - Eelse If - Else merupakan percabangan yang memeriksa nilai bool dari operator logical ataupun comparison, apabila nilai bernilai true maka proses akan dijalankan jika tidak maka akan proses akan dilempar ke yang lain.

         contoh if(nilai_bool){
            //proses
         } else {
            //proses
         }

2. for, do while dan while do merupakan perulangan. loop for adalah untuk mengulang dengan mengecek kondisi di dalam tanda kurung for (). format yang akan dicek biasanya berupa (nilai_awal; nilai_bool; pengubah_nilai). do while adalah perulangan yang akan dilakukan perulangan terlebih dahulu ketika pengecekan pada while bernilia true, berkebalikan dengan while do dimana akan dicek terlebih dahulu kondisi pada while lalu melakukan perulangan.

contoh for

         for(int i = 0; i<10; i++){
         //proses
         }

contoh do while

         do{
         //proses
         } while (nilai);

contoh while do

         while(nilai){
         //proses
         }

3. break don continue adlah cara untuk melakukan pemberhentian proses perulangan, perbedan yang ada pada continue adalah hanya menghentkan satu kali proses dan akan dilanjut lagi. break adalah menghentikan proses perulangan secara keseluruhan


# Resume Materi KMFlutter – Advance Function – Async-Await – Collection
## Tuliskan 3 poin yang dipelajari dari materi tersebut. Resume / ringkasan materi dapat disubmit melalui Github, sesuai intruksi yang ada di link berikut [LINK](https://cobalt-bike-c9e.notion.site/Cara-Pengumpulan-2b2224b8ba0b4dd78774084a65c0154d)
1. anonymus function, memiliki format

         (){}
dapat disimpan dalam variabel, contoh

         var hello = (){}

2. async await adalah cara untuk menjalankan suatu  proses dengan syncron, 

         void main() async{
            WidgetsFlutterBinding.ensureInitialized();
            await DB.init();
            runApp(...);
         }

3. collection pada dart berupa List dan Map, berfungsi untuk menampung data

   contoh List

         List<int> angka = [1,2,3,4,5,6,7,8,9,0];  //bisa diisi dengan tipe String

   contoh Map

         Map map = {'satu' : 1, 'dua' : 2}
