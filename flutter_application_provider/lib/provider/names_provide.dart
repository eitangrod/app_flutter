import 'package:flutter/material.dart';

class NamesModel with ChangeNotifier {
  final List<String> _names = [];

  List<String> get names => _names;

  void addName(String name) {
    _names.add(name);
    notifyListeners();
  }

  void updateName(int index, String newName) {
    _names[index] = newName;
    notifyListeners();
  }

  void removeName(int index) {
    _names.removeAt(index);
    notifyListeners();
  }
}
