import 'package:flutter/material.dart';
import 'package:flutter_application_provider/core/screens/name_list_screen.dart';
import 'package:flutter_application_provider/provider/names_provide.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NamesModel(),
      child: const MyApp(),
    ),
  );
}

