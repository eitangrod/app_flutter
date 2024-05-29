import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  final String userName;
  HomeScreen({super.key, this.userName = ''});
 
  List <String> movies =[
    'AVENGERS: INFINITY WAR',
    'GUARDIANS OF THE GALAXY',
    'AVENGERS: ENDGAME',
    'CAPTAIN AMERICA: THE WINTER SOLDIER',
    'THE AVENGERS',
    'IRONMAN',
    'CAPTAN AMERICA: CIVIL WAR',
    'THOR: RAGNAROK',
    'BLACK PANTHER',
    'SPIDER-MAN: NO WAY HAME',
  ];

  List <String> top =[
    '10/10',
    '9/10',
    '8/10',
    '7/10',
    '6/10',
    '5/10',
    '4/10',
    '3/10',
    '2/10',
    '1/10',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies ranking'),
      ),
      body: ListView.builder(
        itemCount:movies.length, 
        itemBuilder: ((context, index) {
        return Card(
          child: ListTile(
            title: Text(movies[index]),
            subtitle: Text(top [index]),
          ),
        );
      }))
    );
   }
}