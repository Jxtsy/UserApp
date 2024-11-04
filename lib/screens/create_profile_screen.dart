import 'package:flutter/material.dart';

class CreateProfileScreen extends StatefulWidget {
  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _occupationController = TextEditingController();

  void _saveProfile() {
    Navigator.pushNamed(
      context,
      '/profile',
      arguments: {
        'name': _nameController.text,
        'age': _ageController.text,
        'occupation': _occupationController.text,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear Perfil'),
        backgroundColor: const Color.fromARGB(219, 151, 206, 252),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    labelText: 'Nombre', border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                    labelText: 'Edad', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _occupationController,
                decoration: InputDecoration(
                    labelText: 'Ocupación', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(219, 151, 206, 252),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
                onPressed: _saveProfile,
                child: Text('Guardar y Ver Perfil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
