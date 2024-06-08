import 'package:flutter/material.dart';

void main() {
  runApp(eksklusif());
}

class eksklusif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    KosArlianaScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorit',
          ),
        ],
      ),
    );
  }
}

class KosArlianaScreen extends StatelessWidget {
  final List<String> images = [
    'data/eksklusif1.png', // Pastikan gambar ini ada di folder assets
    'data/eksklusif2.png', // Tambahkan gambar lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kos Arliana'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200, // Atur tinggi sesuai kebutuhan
              child: PageView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index]);
                },
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Kos Arliana',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Jalan, Legok, Lohbener, Indramayu',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              'Kamar ekslusif',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Text(
                  '4.2',
                  style: TextStyle(fontSize: 16),
                ),
                Icon(Icons.star, color: Colors.yellow),
                Spacer(),
                Text(
                  '550rb/bln',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 8.0),
                Text(
                  '6.6jt/thn',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Liana Puspitasari'),
              subtitle: Text('Pemilik'),
              trailing: Icon(Icons.phone),
            ),
            Divider(),
            Text(
              'Spesifikasi Kamar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.bed),
              title: Text('Double Bed'),
            ),
            Divider(),
            Text(
              'Fasilitas Kamar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.air),
              title: Text('AC'),
            ),
            ListTile(
              leading: Icon(Icons.bathtub_sharp),
              title: Text('Kamar Mandi Didalam'),
            ),
            ListTile(
              leading: Icon(Icons.wifi),
              title: Text('Wifi'),
            ),
            Divider(),
            Text(
              'Peraturan Khusus Tipe Kamar Ini',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Tamu menginap dikenakan biaya'),
            ),
            ListTile(
              title: Text('Tipe ini bisa diisi maks. 2 orang/kamar'),
            ),
            ListTile(
              title: Text('Ada jam tamu'),
            ),
            Divider(),
            Text(
              'Ulasan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Kiki Kurniawati Sholibah'),
              subtitle: Text('Kos yang nyaman dan bersih.'),
            ),
          ],
        ),
      ),
    );
  }
}

