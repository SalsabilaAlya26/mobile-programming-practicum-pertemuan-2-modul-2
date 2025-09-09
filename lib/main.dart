import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFFFDE2E4), // Latar belakang pink soft
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Pemutar Musik"),
          centerTitle: true,
          backgroundColor: const Color(0xFFFAD2E1), // Warna pink pastel untuk AppBar
          foregroundColor: Colors.black87, // Warna teks AppBar
        ),
        body: const Center(
          child: Text(
            "Pemutar Musik",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          color: const Color(0xFFFAD2E1), // Warna pink pastel untuk Control Bar
          child: Row(
            children: [
              // Tombol Shuffle
              Expanded(
                child: Icon(
                  Icons.shuffle,
                  color: Color(0xFFE75480), // Pink lebih gelap untuk ikon
                  size: 30,
                ),
              ),
              // Tombol Previous
              Expanded(
                child: Icon(
                  Icons.skip_previous,
                  color: Color(0xFFE75480),
                  size: 30,
                ),
              ),
              // Tombol Play - Lebih besar dengan Flexible
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Icon(
                  Icons.play_circle_fill,
                  color: Color(0xFFE75480),
                  size: 50,
                ),
              ),
              // Tombol Next
              Expanded(
                child: Icon(
                  Icons.skip_next,
                  color: Color(0xFFE75480),
                  size: 30,
                ),
              ),
              // Tombol Repeat
              Expanded(
                child: Icon(
                  Icons.repeat,
                  color: Color(0xFFE75480),
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
