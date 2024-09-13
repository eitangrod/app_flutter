import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CORE/providers/movie_provider.dart';
import 'CORE/SCREEN/login_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: MaterialApp(
        title: 'Movie List App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginScreen(),
      ),
    ),
  );
}