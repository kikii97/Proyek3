import 'package:app_proyek/hal_awal3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Halaman2());
}

class Halaman2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/hal_awal3": (context) => Halaman3(), // Menggunakan widget Dashboard yang sudah didefinisikan
      },
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png', // Ubah dengan path gambar logo Anda
                width: 500, // Sesuaikan lebar logo sesuai kebutuhan
                height: 300,
              ),
              Center(
                child: Text(
                  'Temukan Kosan \n Yang Kamu Inginkan',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Builder(
                builder: (context) => 
              ElevatedButton(
                onPressed: () {
                  print('Tombol Pencari Kosan ditekan');
                  Navigator.pushNamed(context, "/hal_awal3"); // Mengarahkan ke rute "/dashboard1"
                },
                child: Text('AYO TEMUKAN!'),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
