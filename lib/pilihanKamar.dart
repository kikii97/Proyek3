import 'package:app_proyek/eksklusif.dart';
import 'package:app_proyek/standar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PilihanKamar());
}

class PilihanKamar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/standar": (context) => Standar(),
        "/eksklusif": (context) => eksklusif(),
      },
      title: 'Pilihan Kamar',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: RoomSelectionPage(),
    );
  }
}

class RoomSelectionPage extends StatefulWidget {
  @override
  _RoomSelectionPageState createState() => _RoomSelectionPageState();
}

class _RoomSelectionPageState extends State<RoomSelectionPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
            Text(
              'Pilihan Kamar Yang Kamu Mau',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Tipe Kamar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(
                  'Kamar Standar',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    print("klik Kamar Standar");
                    Navigator.pushNamed(context, "/standar");
                  },
                  child: Text('Pilih'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 4,
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(
                  'Kamar Eksklusif',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    print("klik Eksklusif");
                    Navigator.pushNamed(context, "/eksklusif");
                  },
                  child: Text('Pilih'),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
            label: 'Favorite',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
