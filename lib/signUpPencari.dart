import 'package:app_proyek/loginPencari.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "loginPencari": (context) => LoginPage(),      },
      title: 'Sign Up Demo',
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Create an account to continue',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.0),
              SignUpForm(),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  print("klik dashboard");
                  Navigator.pushNamed(context, "dashboard");
                  // Implementasi logika submit di sini
                },
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? '),
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke layar login
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
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

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Username',
            prefixIcon: Icon(Icons.person),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            filled: true,
            fillColor: Colors.grey[65],
          ),
        ),
        SizedBox(height: 10.0),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'No HP',
            prefixIcon: Icon(Icons.phone),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
             filled: true,
            fillColor: Colors.grey[65],
          ),
        ),
        SizedBox(height: 10.0),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
             filled: true,
            fillColor: Colors.grey[65],
          ),
        ),
      ],
    );
  }
}
