import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
                    'Pantai Kuta',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Text('Bali, Indonesia', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          /* soal 3*/
          Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

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

    Color color = Theme.of(context).primaryColorDark;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Telepon'),
        _buildButtonColumn(color, Icons.near_me, 'Rute'),
        _buildButtonColumn(color, Icons.share, 'Bagikan'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pantai Kuta adalah salah satu destinasi wisata terkenal yang terletak di Bali, Indonesia.'
        'Pantai ini terkenal dengan keindahan pasir putihnya dan ombak yang cocok untuk berselancar, '
        'menjadikannya tempat favorit bagi wisatawan lokal maupun mancanegara.'
        '\n'
        'Dino Febiyan(362458302043) ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout: Dino Febiyan 362458302043',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Layout Demo')),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/pantai_kuta.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
