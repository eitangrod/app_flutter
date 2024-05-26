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

List<String> users = ['eitan', 'uri', 'feier'];    
List<String> pass = ['123', '456', '789'];

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
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                prefixIcon: Icon(Icons.key),
              ),
              controller: passController,
            )),
        const SizedBox(height: 16),
        ElevatedButton(
            onPressed: () {
              String username = userController.text;
              String password = passController.text;
                            
                  
         if (!users.contains(username)) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Login no existe', style: TextStyle(fontSize: 20)),
                backgroundColor: const Color.fromARGB(255, 8, 64, 110),
              ));
            } else {
              int index = users.indexOf(username);
              if (pass[index] != password) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Contraseña incorrecta', style: TextStyle(fontSize: 20)),
                  backgroundColor: const Color.fromARGB(255, 8, 64, 110),
                ));
              } else {
                context.pushNamed(HomeScreen.name, extra: userController.text);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Login correcto', style: TextStyle(fontSize: 20)),
                  backgroundColor: const Color.fromARGB(255, 8, 64, 110),
                ));
              }
            }
            },
            child: const Text('Login')),
      ],
    );
  }
}