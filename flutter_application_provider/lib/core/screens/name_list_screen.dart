import 'package:flutter/material.dart';
import 'package:flutter_application_provider/core/screens/add_name_screen.dart';
import 'package:provider/provider.dart';
import '../../provider/names_provide.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NamesList(),
    );
  }
}
class NamesList extends StatelessWidget {
  const NamesList({super.key});
  @override
  Widget build(BuildContext context) {
    final namesprovide = Provider.of<NamesModel>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editable Names List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: namesprovide.names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: GestureDetector(
                    onTap: () {
                      TextEditingController controller = TextEditingController(text: namesprovide.names[index]);
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Edit Name'),
                          content: TextField(
                            controller: controller,
                          ),
                          
                          actions: [
                            TextButton(
                              onPressed: () {
                                namesprovide.updateName(index, controller.text);
                                Navigator.of(context).pop();
                              },
                              child: const Text('Save'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text(namesprovide.names[index]),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      namesprovide.removeName(index);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('The name was removed', style: TextStyle(fontSize: 20)),
                  backgroundColor: Color.fromARGB(255, 255, 0, 0)
                  ));
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddNameScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
