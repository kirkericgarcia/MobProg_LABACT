import 'package:flutter/material.dart';
import 'banix_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'List View Builder'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final List people = ["Harold Rhey Pisos", "Robert Kiyosaki", "Banix"];
  MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc5626a),
        title: Row(
          children: [
            Icon(Icons.home),
            SizedBox(width: 😎,
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(title),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF335e80),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return BanixCard(name: people[index]);
        },
      ),
    );
  }
}