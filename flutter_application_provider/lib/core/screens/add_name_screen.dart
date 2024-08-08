import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/names_provide.dart';

class AddNameScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  AddNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter a new name',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  Provider.of<NamesModel>(context, listen: false).addName(_controller.text);
                  Navigator.of(context).pop();
              }
              else{
                     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('No new name was detected', style: TextStyle(fontSize: 20)),
                  backgroundColor: Color.fromARGB(255, 8, 64, 110)
            ));
              }
              },
              child: const Text('Add Name'),
            ),
          ],
        ),
      ),
    );
  }
}
