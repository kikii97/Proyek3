import 'package:flutter/material.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('data/jw.jpeg'),
            ),
            SizedBox(height: 16),
            Text('dea zulfaniar', style: TextStyle(fontSize: 24)),
            SizedBox(height: 8),
            Text('085', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 8),
                Text('dea zulfaniar', style: TextStyle(fontSize: 18)),
              ],
            ),
            SizedBox(height: 16),
            Row(

              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text('089', style: TextStyle(fontSize: 18)),
              ],
            ),
            SizedBox(height: 16),
            Row(

              children: [
                Icon(Icons.lock),
                SizedBox(width: 8),
                Text('deeeee', style: TextStyle(fontSize: 18)),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi edit disini
              },
              child: Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }
}
