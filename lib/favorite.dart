import 'package:flutter/material.dart';

void main() {
  runApp(favorite());
}

class favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FavoriteScreen(),
    );
  }
}

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('List Kos Favoritemu!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Tandai dan Simpan List Favorite disini', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  RecommendationCard(
                    imageUrl: 'assets/kos1.jpg', // Pastikan path sesuai
                    title: 'Kos Arliana',
                    location: 'Jalan, Legok, Lohbener, Indramayu',
                    price: '550rb/bln',
                    rating: 4.2,
                    availableRooms: 3,
                  ),
                  SizedBox(height: 10),
                  RecommendationCard(
                    imageUrl: 'assets/kos3.jpg', // Pastikan path sesuai
                    title: 'Kos Elmadinah',
                    location: 'Jalan, Legok, Lohbener, Indramayu',
                    price: '450rb/bln',
                    rating: 4.0,
                    availableRooms: null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String location;
  final String price;
  final double rating;
  final int? availableRooms;

  const RecommendationCard({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    this.availableRooms,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(imageUrl), // Ganti dengan path gambar yang sesuai
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tersedia ${availableRooms ?? "?"} kamar \n$title\n$location\nHarga sebulan $price',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < rating.round()
                      ? Icons.star
                      : Icons.star_border,
                  color: Colors.yellow,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
