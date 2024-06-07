import 'package:app_proyek/logIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppKu());
}

class AppKu extends StatelessWidget {
  const AppKu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: logIn(),
    );
  }
}
