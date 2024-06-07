import 'package:flutter/material.dart';

void main() {
  runApp(AppKu());
}

class AppKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: logIn(),
    );
  }
}

class logIn extends StatefulWidget {
  static String tag = 'login';

  @override
  _logInState createState() => new _logInState();
}

class _logInState extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOG IN!',
          style: TextStyle(fontSize: 40.0),
        ),
        bottom: PreferredSize(
          preferredSize:
              Size.fromHeight(50.0), 
          child: SizedBox(), 
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15.0), 
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nomor Handphone',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      15.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(color: Colors.white),
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 15), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      25.0), 
                ),
              ),
              child: Text('Submit'),
            ),
            SizedBox(height: 10),
            Text(
              'Already have an Account? Log In',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
