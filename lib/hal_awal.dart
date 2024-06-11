import 'package:app_proyek/signUp1.dart';
import 'package:flutter/material.dart';
import 'hal_awal2.dart'; // Pastikan file ini ada dan mendefinisikan widget Halaman2

void main() {
  runApp(Halaman1());
}

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "hal_awal2": (context) => Halaman2(),
        "signUp1": (context) => SignUpForm(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('KOS\'AN'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png', // Ubah dengan path gambar logo Anda
                width: 200, // Sesuaikan lebar logo sesuai kebutuhan
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'KOS\'AN',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              Builder(
                builder: (context) =>
              ElevatedButton(
                onPressed: () {
                  print('Tombol Pencari Kosan ditekan');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Halaman2()));                },
                child: Text('Pencari Kosan'),
              ),
              ),
              SizedBox(height: 20),
              Builder(
                builder: (context) => 
              
              ElevatedButton(
                onPressed: () {
                  print('Tombol Pemilik Kosan ditekan');
                  Navigator.pushNamed(context, "signUp1");
                },
                child: Text('Pemilik Kosan'),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
