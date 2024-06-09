import 'package:app_proyek/editProfile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppKu());
}

class AppKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profil(),
      routes: {
        '/editProfile': (context) => editProfile(),
      },
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/1.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Armelinda Putry Liana',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'lianapuspa15@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Armelinda Putry Liana'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('lianapuspa15@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('087854888861'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Celeng, Lohbener, Indramayu'),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('li*******'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/editProfile');
              },
              icon: Icon(Icons.edit_note),
              label: Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }
}

