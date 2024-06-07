import 'package:flutter/material.dart';

void main() => runApp(AppKu());

class AppKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              Text(
                'List Kost Milikmu!',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              Text(
                'Segera Perbanyak Kos Milikmu',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Gambar(),
        ),
      ),
    );
  }
}

class Gambar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/kos1.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
