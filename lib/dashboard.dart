import 'package:app_proyek/pilihanKamar.dart';
import 'package:app_proyek/single.dart';
import 'package:flutter/material.dart';
 
void main() {
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/single": (context) => Single(),
        "/pilihanKamar": (context) => PilihanKamar(), // Add this route for detail page
      },
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location\nLohbener-Indramayu',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 10), // Added spacing for better layout
              Text(
                'Temukan Apa Yang Kamu Mau',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CategoryButton(
                    icon: Icons.bed,
                    label: 'Double',
                    onTap: () {
                      Navigator.pushNamed(context, "");
                    },
                  ),
                  SizedBox(width: 10),
                  CategoryButton(
                    icon: Icons.single_bed,
                    label: 'Single',
                    onTap: () {
                      Navigator.pushNamed(context, "/single");
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'For You\nOur recommendation for you',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ListView(
                physics: NeverScrollableScrollPhysics(), // Disable internal scrolling
                shrinkWrap: true, // Make ListView take minimum space required
                children: [
                  RecommendationCard(
                    imageUrl: 'assets/kos1.jpg', // Ensure this path is correct
                    title: 'Kos Arliana',
                    location: 'Jalan, Legok, Lohbener, Indramayu',
                    price: '550rb/bln',
                    rating: 4.2,
                    availableRooms: 3,
                    onTap: () {
                      Navigator.pushNamed(context, '/pilihanKamar', arguments: {
                        'title': 'Kos Arliana',
                        'location': 'Jalan, Legok, Lohbener, Indramayu',
                        'price': '550rb/bln',
                        'rating': 4.2,
                        'availableRooms': 3,
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  RecommendationCard(
                    imageUrl: 'assets/kos2.jpg', // Ensure this path is correct
                    title: 'Kos Elmadinah',
                    location: 'Jalan, Legok, Lohbener, Indramayu',
                    price: '450rb/bln',
                    rating: 4.0,
                    availableRooms: null,
                    onTap: () {
                      Navigator.pushNamed(context, '/pilihanKamar', arguments: {
                        'title': 'Kos Elmadinah',
                        'location': 'Jalan, Legok, Lohbener, Indramayu',
                        'price': '450rb/bln',
                        'rating': 4.0,
                        'availableRooms': null,
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  RecommendationCard(
                    imageUrl: 'assets/kos3.jpg', // Ensure this path is correct
                    title: 'Kos Elmadinah',
                    location: 'Jalan, Legok, Lohbener, Indramayu',
                    price: '450rb/bln',
                    rating: 4.0,
                    availableRooms: null,
                    onTap: () {
                      Navigator.pushNamed(context, '/pilihanKamar', arguments: {
                        'title': 'Kos Elmadinah',
                        'location': 'Jalan, Legok, Lohbener, Indramayu',
                        'price': '450rb/bln',
                        'rating': 4.0,
                        'availableRooms': null,
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  CategoryButton({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.shade200,
            child: Icon(icon, size: 30, color: Colors.black),
          ),
          SizedBox(height: 5),
          Text(label, style: TextStyle(fontSize: 16)),
        ],
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
  final VoidCallback onTap;

  RecommendationCard({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    this.availableRooms,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image.asset( // Changed to Image.asset for local images
                imageUrl,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(location, style: TextStyle(fontSize: 14)),
                    SizedBox(height: 5),
                    Text(price, style: TextStyle(fontSize: 16, color: Colors.green)),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.orange),
                        SizedBox(width: 5),
                        Text(rating.toString(), style: TextStyle(fontSize: 14)),
                        Spacer(),
                        if (availableRooms != null)
                          Text('Tersisa $availableRooms Kamar', style: TextStyle(fontSize: 14, color: Colors.red)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(args['title']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(args['imageUrl']),
            SizedBox(height: 16),
            Text(
              args['title'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(args['location'], style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text(args['price'], style: TextStyle(fontSize: 16, color: Colors.green)),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.star, size: 16, color: Colors.orange),
                SizedBox(width: 5),
                Text(args['rating'].toString(), style: TextStyle(fontSize: 14)),
              ],
            ),
            if (args['availableRooms'] != null)
              SizedBox(height: 8),
            if (args['availableRooms'] != null)
              Text('Tersisa ${args['availableRooms']} Kamar', style: TextStyle(fontSize: 14, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
