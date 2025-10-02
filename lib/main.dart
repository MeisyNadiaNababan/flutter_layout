import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ADD THIS SECTION TO THE BUILD METHOD
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung Bromo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Cemoro Lawang, Desa Ngadisari, Kec. Sukapura, Kabupaten Probolinggo, Jawa Timur. Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    // Langkah 2: Buat widget buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Praktikum 3: Implementasi text section
    //Langkah 1: Buat widget textSection
      Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Bromo adalah salah satu gunung berapi aktif yang terletak di Jawa Timur, Indonesia. '
        'Dengan ketinggian 2.329 meter di atas permukaan laut, Bromo menjadi destinasi wisata populer '
        'karena pemandangan sunrise-nya yang menakjubkan. Wisatawan dapat menyaksikan matahari terbit '
        'dari Penanjakan dengan latar belakang Gunung Bromo, Batok, dan Semeru. '
        'Kawasan Bromo-Tengger-Semeru juga merupakan habitat suku Tengger yang masih menjaga tradisi '
        'dan budaya leluhur. Setiap tahun, masyarakat Tengger mengadakan upacara Yadnya Kasada sebagai '
        'bentuk rasa syukur kepada Sang Hyang Widhi.\n\n'
        'Meisy Nadia Nababan - 2341760031',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Meisy Nadia Nababan - 2341760031',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView( // Praktikum 4: Implementasi image section //Langkah 3: Terakhir, ubah menjadi ListView
          // Praktikum 4: Implementasi image section // Langkah 2: Tambahkan gambar ke body
          children: [
            Image.asset(
              'images/bromo.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,  // Praktikum 2: Implementasi button row // Langkah 3: Tambah button section ke body
            textSection, // Praktikum 3: Implementasi text section // Langkah 2: Tambahkan variabel text section ke body
          ],
        ),
      ),
    );
  }

  // Praktikum 2: Implementasi button row
  // Langkah 1: Buat method Column _buildButtonColumn
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }
  }