import 'package:app_proyek/profile.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AppKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: editProfile(),
    );
  }
}

class editProfile extends StatefulWidget {
  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _image == null
                      ? AssetImage('assets/1.jpg')
                      : FileImage(_image!) as ImageProvider,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  hintText: 'Armelinda Putry Liana',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'lianapuspa15@gmail.com',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nomor Telepon',
                  hintText: '087854888861',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  hintText: 'Celeng, Lohbener, Indramayu',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('Data Berhasil Diubah'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                    (route) => false,
                  );
                },
                child: Text('Edit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
