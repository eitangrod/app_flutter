import 'package:flutter/material.dart';
import '../entities/users.dart';
import 'movie_list_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginView(),
    );
  }
}

List<User> users = [
User(name: 'Eitan', pass: '123'),
User(name: 'Uri', pass: '456'),
User(name: 'Feier', pass: '789')
]; 

class _LoginView extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  _LoginView();
 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: userController,
            decoration: const InputDecoration(
              hintText: 'Username',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),

        Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              enableInteractiveSelection: false,
              obscureText: true,
              controller: passController,
              decoration: const InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.key),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                 ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
            onPressed: () {
              String username = userController.text;
              String password = passController.text;
              
              final user = users.firstWhere(
                (user) => user.name == username,
                orElse: () => User(name: '', pass: ''));
        
              if (user.name != username ) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Usuario incorrecto', style: TextStyle(fontSize: 20)),
                backgroundColor: Color.fromARGB(255, 255, 0, 0),
              ));
            } else {
              if (user.name == '' ) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Usuario vacio', style: TextStyle(fontSize: 20)),
                backgroundColor: Color.fromARGB(255, 255, 0, 0),
              ));
              } else {
              if (user.pass != password) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Contraseña incorrecta', style: TextStyle(fontSize: 20)),
                  backgroundColor: Color.fromARGB(255, 255, 0, 0),
                ));
              } else {
                Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => MovieListScreen()));
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Login correcto', style: TextStyle(fontSize: 20)),
                  backgroundColor: Color.fromARGB(255, 8, 64, 110),
                ));
              }
            } 
          }
        },
            child: const Text('Login')),
      ],
    );
  }
}