import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: const Color.fromARGB(219, 151, 206, 252),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  const Color.fromARGB(219, 151, 206, 252), // Color del botón
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/create-profile');
            },
            child: Text('Crear perfil'),
          ),
        ),
      ),
    );
  }
}
