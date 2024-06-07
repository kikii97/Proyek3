import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(AppKu());
}

class AppKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: formKos(),
    );
  }
}

class formKos extends StatefulWidget {
  @override
  _formKosState createState() => _formKosState();
}

class _formKosState extends State<formKos> {
  final _formKey = GlobalKey<FormState>();
  String namaKos = '';
  String alamatKos = '';
  String tipeKamar = '';
  String kamarTersedia = '';
  String deskripsi = '';
  String hargaPerBulan = '';
  String hargaPerTahun = '';
  File? image;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      }
    });
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Handle form submission logic here
    }
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Theme.of(context).primaryColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0),
            Text(
              'Isi Informasi Kosmu',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            Text(
              'Berikan Informasi Yang Sesuai!',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30.0),
              TextFormField(
                decoration: _inputDecoration('Nama Kos'),
                onSaved: (value) {
                  namaKos = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama Kos tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: _inputDecoration('Alamat Kos'),
                onSaved: (value) {
                  alamatKos = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Alamat Kos tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: _inputDecoration('Tipe Kamar'),
                onSaved: (value) {
                  tipeKamar = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Tipe Kamar tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: _inputDecoration('Kamar Tersedia'),
                onSaved: (value) {
                  kamarTersedia = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Kamar Tersedia tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: _inputDecoration('Deskripsi'),
                onSaved: (value) {
                  deskripsi = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Deskripsi tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: _inputDecoration('Harga 1 Bulan'),
                onSaved: (value) {
                  hargaPerBulan = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Harga 1 Bulan tidak boleh kosong';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: _inputDecoration('Harga 1 Tahun'),
                onSaved: (value) {
                  hargaPerTahun = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Harga 1 Tahun tidak boleh kosong';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  color: Colors.grey[200],
                  height: 150,
                  child: image == null
                      ? Center(child: Text('Tap to pick an image'))
                      : Image.file(image!),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
