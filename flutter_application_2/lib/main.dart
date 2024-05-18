import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

TextEditingController userController = TextEditingController();
  TextEditingController userController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:Padding(
            padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  String algo = userController.text;
                  String pass = userController1.text;

                  if (algo == 'eitan y uri') {
                   if (pass == 'hola123') {
                    print('Login correcto');
                  }
                   else {
                    print('Contraseña fallida');
                  }
                  } 
                  else {
                    print('Usuario fallido');
                  }
                  if (algo == '') {
                  
                    print('Login vacio');
                  } 
                },
                child: const Text('Login'),
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario',
                  prefixIcon: Icon(Icons.person)
                ),
                controller: userController,
              ),
              const Divider (height: 20.0,),
               TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                  prefixIcon: Icon(Icons.key),
                ),
                controller: userController1,
              )



          ],
          ),
        ),
      ),
    ));
  }
}