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
  
  List<String> foto = [
    'assets/download.jpg',
    'assets/353959.webp',
    'assets/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg',
    'assets/caws.jpg',
    'assets/avengers.jpg',
    'assets/iron man.jpg',
    'assets/cacv.jpg',
    'assets/thor.jpg',
    'assets/black panther.jpg',
    'assets/spiderman.jpg',
  
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies ranking'),
      ),
      body: ListView.builder(
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    foto[index],
                    width: 100, 
                    height: 130, 
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                     title: Text(movies[index]),
                     subtitle: Text(top [index]),
                      
                  ),
                ),
               )
             ],
           )
          );
         }
       )
     ); 
   }
}
