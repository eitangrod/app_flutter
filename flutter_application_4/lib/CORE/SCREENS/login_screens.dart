import 'package:flutter_application_4/CORE/SCREENS/home_screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

class Usuario {
  final String username;
  final String password;

  Usuario({required this.username, required this.password});
}

List<String> users = ["eitan", "uri", "feier"];
List<String> password = ["123", "456", "789"];

class _LoginView extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController userController1 = TextEditingController();
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
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                prefixIcon: Icon(Icons.key),
              ),
              controller: userController1,
            )),
        const SizedBox(height: 16),
        ElevatedButton(
            onPressed: () {
              String username = userController.text;
              String password = userController1.text;

              if (username == 'username') {
                if (password == 'password') {
                  print('Login correcto');
                  context.pushNamed(HomeScreen.name,
                      extra: userController.text);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('Login correcto',
                        style: TextStyle(fontSize: 20)),
                    backgroundColor: Colors.blue,
                  ));
                } else {
                  int index = username.indexOf(username);
                  if (password[index] != password) ;
                  print('Contraseña fallida');
                }
              }
              if (!users.contains(username)) {
                print('Login no existe');
              }
            },
            child: const Text('Login')),
      ],
    );
  }
}
