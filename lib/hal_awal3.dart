import 'package:app_proyek/signUpPencari.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Halaman3());
}

class Halaman3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Page',
      routes: {
        "/signUpPencari": (context) => MyApp(), // Corrected route name
      },
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo
            Image.asset(
              'assets/logo.png', // Ganti dengan path logo Anda
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),

            // Teks "Temukan pilihan terbaikmu"
            Text(
              'Temukan pilihan terbaikmu',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  print('Tombol Pencari Kosan ditekan');
                  Navigator.pushNamed(context, "/signUpPencari"); // Corrected route name
                },
                child: Text('SignUp'),
              ),
            ),
            SizedBox(height: 10),

            // Teks "Or"
            Text('Or'),
            SizedBox(height: 10),

            // Tombol Google dan Facebook
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi ketika tombol Google ditekan
                  },
                  icon: Icon(Icons.facebook), // Menggunakan ikon 'google'
                  label: Text('Google'),
                ),
                SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi ketika tombol Facebook ditekan
                  },
                  icon: Icon(Icons.facebook),
                  label: Text('Facebook'),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Teks "Dont have a account? Login"
            Text(
              'Dont have a account? Login',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
