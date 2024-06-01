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
    'El final de esta entrega se recordará siempre por ser uno de los mejores cliffhangers del cine. Los hermanos Russo logran algo impensable: que pese a la cantidad ingente de estrellas, todo funcione como un reloj. No hay ningún pero a esta entrega.',
    'La apuesta más arriesgada de Marvel hasta la fecha fue esta película, en la que todo funciona como un reloj. Su humor engrasa todas las piezas, y los actores conectan a la perfección. Si no fuera por el villano (otra vez), sería la primera de la lista.',
    'Era muy difícil superar lo que consiguieron con "Infinity War". Y por momentos están cerca de superarla, pero la sorpresa final de la anterior es imposible de rebasar. Aún así, es el homenaje perfecto a los fans y a 10 años de MCU, con mucho fan service, que nunca viene mal.',
    'Cuando Marvel se puso seria, y empezó a tomarse en serio. Película de acción, sí, pero también de espionaje, a la vieja usanza, sin un gran supervillano, o escenas de pelea con cientos de extras y CGI. No. Aquí lo importante son los personajes, y la revelación de Hydra aún hoy pone los pelos de punta. Cambió el MCU para siempre.',
    'Si alguien te pregunta cómo sería un blockbuster perfecto, ya sabes cuál debe de ser tu respuesta: "Los Vengadores". Joss Whedon tiene carta blanca para hacer lo que quiera, y el resultado es la mejor película del MCU, con todos los personajes aportando a la trama y con uno de los villanos más icónicos del cine reciente: Loki.',
    'El pistoletazo de salida del MCU. El humor, la acción realista... muchos de los puntos que tendrá el universo Marvel están aquí, pero quizá le falta un poco de riesgo',
    'Esta nueva película de la saga Capitán América nos dio la mayor división a la que se han enfrentado los héroes, y una pelea entre todos ellos apoteósica. ¿Lo bueno de esta entrega? Que el supervillano es un humano normal y corriente. Así tendría que haber sido "La era de Ultrón".',
    'Taika Waitit entró en Marvel como un elefante en una cacharrería y funcionó. Se nota que no solo él se lo pasa bien, sino todos los personajes. Cate Blanchett nunca ha estado más divertida, Loki logra que empaticemos con él, y uno de los villanos es Jeff Goldblum. Quizá podría haber sido un poco más valiente en algunas cosas (Valkiria, por ejemplo), pero es la película más divertida del MCU, y se nota.',
    'Marvel se sale de su canon y reinterpreta la historia de "El rey león" a su manera, con superhéroes y tecnología. Killmonger es el villano más interesante del MCU y la sensación de estar viendo algo diferente se adueña del espectador a cada minuto aunque quizá pierda los papeles en la batalla final',
    'Encumbrada por las sorpresas que encierra su metraje, lo cierto es que la tercera entrega del Spidey de Tom Holland tiene una trama muy absurda y las peores set pieces de acción que recordamos en mucho tiempo en el MCU. Pero todo lo compensa con nostalgia con guiños al público y con un final bastante emotivo.',
  ];
  
  List<String> foto = [
    'assets/aiw.jpg',
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
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    foto[index],
                    width: 160, 
                    height: 160, 
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
