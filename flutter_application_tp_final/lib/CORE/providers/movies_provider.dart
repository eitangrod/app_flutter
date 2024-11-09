import 'package:flutter/foundation.dart';
import 'package:flutter_application_tp_final/CORE/entities/movies.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> _movies = [];

  List<Movie> get movies => _movies;

  void addMovie(Movie movie) {
    _movies.add(movie);
    notifyListeners();
  }

  void updateMovie(String id, String title, String description, String imageUrl) {
    final movieIndex = _movies.indexWhere((movie) => movie.id == id);
    if (movieIndex != -1) {
      _movies[movieIndex].title = title;
      _movies[movieIndex].desc = description;
      _movies[movieIndex].urlimag = imageUrl;
      notifyListeners();
    }
  }

  void deleteMovie(String id) {
    _movies.removeWhere((movie) => movie.id == id);
    notifyListeners();
  }
}