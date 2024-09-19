import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../entities/movie.dart';
import '../providers/movie_provider.dart';

class AddMovieScreen extends StatefulWidget {
  const AddMovieScreen({super.key});

  @override
  _AddMovieScreenState createState() => _AddMovieScreenState();
}

class _AddMovieScreenState extends State<AddMovieScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';
  String _imageUrl = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agregar Película')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Título'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese un título';
                }
                return null;
              },
              onSaved: (value) => _title = value!,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Descripción'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese una descripción';
                }
                return null;
              },
              onSaved: (value) => _description = value!,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'URL de la imagen'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese una URL de imagen';
                }
                return null;
              },
              onSaved: (value) => _imageUrl = value!,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Guardar Película'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  final movieProvider = Provider.of<MovieProvider>(context, listen: false);
                  movieProvider.addMovie(
                    Movie(
                      id: DateTime.now().toString(),
                      title: _title,
                      desc: _description,
                      urlimag: _imageUrl,
                    ),
                  );
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Pelicula guardada', style: TextStyle(fontSize: 20)),
                  backgroundColor: Color.fromARGB(255, 0, 255, 0),
                ));
                } else {
                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Por favor, rellen los campos', style: TextStyle(fontSize: 20)),
                  backgroundColor: Color.fromARGB(255, 255, 0, 0),
                ));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}