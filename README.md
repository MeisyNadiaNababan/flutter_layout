Nama: Meisy Nadia Nababan
<br>NIM: 2341760031
<br>Kelas: SIB 3F
<br>Mata Kuliah: Pemrograman Mobile

Praktikum 1: Membangun Layout di Flutter
1. Buatlah sebuah project fluteer baru dengan nama layout_flutter.
![Screenshot flutter_layout](images/01.png)
<br>

2. Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.
![Screenshot flutter_layout](images/02.png)
Output Program:
![Screenshot flutter_layout](images/004.png)

3. Identifikasi layout diagram
Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:
<br>•	Identifikasi baris dan kolom.
<br>•	Apakah tata letaknya menyertakan kisi-kisi (grid)?
<br>•	Apakah ada elemen yang tumpang tindih?
<br>•	Apakah UI memerlukan tab?
<br>•	Perhatikan area yang memerlukan alignment, padding, atau borders.
Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.

![Screenshot flutter_layout](images/001.jpg)
<br> Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.

![Screenshot flutter_layout](images/002.png)
 <br> 
Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.

![Screenshot flutter_layout](images/003.png)
<br>Setelah tata letak telah dibuat diagramnya, cara termudah adalah dengan menerapkan pendekatan bottom-up. Untuk meminimalkan kebingungan visual dari kode tata letak yang banyak bertumpuk, tempatkan beberapa implementasi dalam variabel dan fungsi.
4. Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:
<br> 

![Screenshot flutter_layout](images/03.png)
/* soal 1 */ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.<br>
/* soal 2 */ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.
<br>/* soal 3 */ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

![Screenshot flutter_layout](images/04.png)

Praktikum 2: Implementasi button row
<br> 1. Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.
<br> Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.
lib/main.dart (_buildButtonColumn)

![Screenshot flutter_layout](images/05.png)

Output Kode
![Screenshot flutter_layout](images/06.png)

<br> 2. Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.
<br> Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():
<br>lib/main.dart (buttonSection)

![Screenshot flutter_layout](images/07.png)

<br> 3. Tambahkan variabel buttonSection ke dalam body seperti berikut:

![Screenshot flutter_layout](images/08.png)

Praktikum 3: Implementasi text section
<br> 1. Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

![Screenshot flutter_layout](images/09.png)
<br> Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.

<br> 2. Tambahkan widget variabel textSection ke dalam body seperti berikut:

![Screenshot flutter_layout](images/10.png)