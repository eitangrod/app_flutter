import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Text('Welcome',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.green
              )),
          Row(
             mainAxisAlignment:MainAxisAlignment.center ,
             children: [
              Icon(Icons.person),
              Text('Usuario: Eitan y Uri',
               style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                 color: Colors.black
              ),)
             ],

          ),
            Row(
             mainAxisAlignment:MainAxisAlignment.center ,
             children: [
              Icon(Icons.key),
              Text('Contraseña: hola123',
               style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                 color: Colors.black
              ),)
             ],

          )
          ],
        ),
      ),
    ),
      ));
  }
}