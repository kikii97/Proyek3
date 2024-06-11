import 'package:app_proyek/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/dashboard": (context) => Dashboard(),
      },
      title: 'Login App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome Back,\nYou\'ve been missed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 104, 66, 66),
                    width: 2.0,
                  ),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            Builder(
              builder: (context) => 
            ElevatedButton(
              onPressed: () {
                print("klik dashboard");
                Navigator.pushNamed(context,"/dashboard"); // Mengarahkan ke "/dashboard1"
              },
              child: Text('Submit'),
            ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Or',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/google.png',
                  width: 50.0,
                  height: 50.0,
                ),
                SizedBox(width: 20.0),
                Image.asset(
                  'assets/facebook.png',
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Don\'t have an Account? Sign Up',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
