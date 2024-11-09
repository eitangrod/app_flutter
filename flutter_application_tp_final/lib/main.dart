import 'package:flutter/material.dart';
import 'package:flutter_application_tp_final/CORE/providers/movies_provider.dart';
import 'package:provider/provider.dart';
import 'CORE/SCREEN/login_screen.dart';


void main() async {
  
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