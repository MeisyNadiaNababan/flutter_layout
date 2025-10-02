Nama: Meisy Nadia Nababan
<br>NIM: 2341760031
<br>Kelas: SIB 3F
<br>Mata Kuliah: Pemrograman Mobile

Praktikum 1: Membangun Layout di Flutter
1. Buatlah sebuah project fluteer baru dengan nama layout_flutter.
![Screenshot layout_flutter](images/01.png)
<br>
2. Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.
![Screenshot layout_flutter](images/02.png)
Output Program:
![Screenshot layout_flutter](images/004.png)
3. Identifikasi layout diagram
Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:
<br>•	Identifikasi baris dan kolom.
<br>•	Apakah tata letaknya menyertakan kisi-kisi (grid)?
<br>•	Apakah ada elemen yang tumpang tindih?
<br>•	Apakah UI memerlukan tab?
<br>•	Perhatikan area yang memerlukan alignment, padding, atau borders.
Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.
![Screenshot layout_flutter](images/001.jpg)
<br> Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.
![Screenshot layout_flutter](images/002.png)
 <br> 
Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.
![Screenshot layout_flutter](images/003.png)
<br>Setelah tata letak telah dibuat diagramnya, cara termudah adalah dengan menerapkan pendekatan bottom-up. Untuk meminimalkan kebingungan visual dari kode tata letak yang banyak bertumpuk, tempatkan beberapa implementasi dalam variabel dan fungsi.
4. Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:
<br> ![Screenshot layout_flutter](images/03.png)
/* soal 1 */ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.<br>
/* soal 2 */ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.
<br>/* soal 3 */ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:
![Screenshot layout_flutter](images/04.png)