# Resume Materi KMFlutter – Dart Object Oriented Programming
## Tuliskan 3 poin yang dipelajari dari materi tersebut. Resume / ringkasan materi dapat disubmit melalui Github, sesuai intruksi yang ada di link berikut [LINK](https://cobalt-bike-c9e.notion.site/Cara-Pengumpulan-2b2224b8ba0b4dd78774084a65c0154d)
1. class adalah abstraksi dari sebuah objek, artinya objek akan mewakili dari suatu class dan dspat menggunkanan atribut-atribut dan methos-methodnya

contoh class

    Class Kucing{
      //...
    }
2. atribut pada suatu class berupa variabel

contoh atribut pada suatu class

    Class Kucing{
      var? jenis;
    }
3. method adalah suatu fungsi/prosedur yang terdapat di dalam suatu class

contoh method

    Class Kucing{
      void suara(){
        print('suara');
      };
    }

# Resume Materi KMFlutter – Deep Dive Into Dart Object Oriented Programming
## Tuliskan 3 poin yang dipelajari dari materi tersebut. Resume / ringkasan materi dapat disubmit melalui Github, sesuai intruksi yang ada di link berikut [LINK](https://cobalt-bike-c9e.notion.site/Cara-Pengumpulan-2b2224b8ba0b4dd78774084a65c0154d)
1. Constructor adalah method yang mempunyai nama yang sama dengan class

   contoh :

       class ResepMakanan{
           String komposisi1;
           String komposisi2;
           String komposisi3;
       
           ResepMakanan({
               required this.komposisi1,
               required this.komposisi2,
               required this.komposisi3,
           });
       }
2. Inheritance adalah cara untuk membuat kelas dapat memiliki sifat-sifat yang ada pada kelas super

   contoh :

       class Makanan{
           cetakResep(){}
           caraMembuat(){}
       }
    
       class NasiGoreng extends Makanan{
           @override
           caraMembuat(){}
       }
   
   
3. Interface memiliki kegunaan yang sama dengan inheritance namun perbedaanya adalah class yang 'implement' ke kelas super wajib memiliki sifat-sifat yang ada pada kelas super

   contoh :
               
       class Makanan{
           cetakResep(){}
           caraMembuat(){}
       }
       class NasiGoreng implements Makanan{
           @override
           cetakResep(){}
           @override
           caraMembuat(){}
       }
# Resume Materi KMFlutter – Introduction Flutter Widget
## ## Tuliskan 3 poin yang dipelajari dari materi tersebut. Resume / ringkasan materi dapat disubmit melalui Github, sesuai intruksi yang ada di link berikut [LINK](https://cobalt-bike-c9e.notion.site/Cara-Pengumpulan-2b2224b8ba0b4dd78774084a65c0154d)
1. Flutter adalah kerangka kerja yang digunakan untuk membangun berbagai macam aplikasi mobile, desktop dan web. Flutter didukung dengan bahasa pemrograman dart

2. StateLess adalah state untuk membuat suatu laman namun tidak dapat membuat perubahannya pada tampilan

   misal di pada halaman aplikasi terdapat menampikan angka 1, jika dengan stateless maka tidak dapat membuat perubahan agar berubah menjadi selain 1.

3. Statefull adalah state untuk membuat syatu laman, berbeda dengan stateless maka statefull bisa dpat membuat perubahan tampilan
