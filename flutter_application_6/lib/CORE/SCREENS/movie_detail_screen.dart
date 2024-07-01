import 'package:flutter/material.dart';
import 'package:flutter_application_4/entities/movie.dart';


class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                movie.urlimg,
                width: 400,
                height: 400,
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              movie.desc,
              style: const TextStyle(fontSize: 6),
            ),
          ],
        ),
      ),
    );
  }
}
