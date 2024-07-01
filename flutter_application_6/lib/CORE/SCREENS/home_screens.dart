import 'package:flutter_application_4/CORE/SCREENS/movie_detail_screen.dart';
import 'package:flutter_application_4/entities/movie.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  final String userName;
  HomeScreen({super.key, this.userName = ''});
 
List <Movie> movies =[

 Movie(
  title: 'AVENGERS: INFINITY WAR', 
  desc: 'El final de esta entrega se recordará siempre por ser uno de los mejores cliffhangers del cine. Los hermanos Russo logran algo impensable: que pese a la cantidad ingente de estrellas, todo funcione como un reloj. No hay ningún pero a esta entrega.', 
  urlimg: 'assets/aiw.jpg'),
  
 Movie(
  title: 'GUARDIANS OF THE GALAXY', 
  desc: 'La apuesta más arriesgada de Marvel hasta la fecha fue esta película, en la que todo funciona como un reloj. Su humor engrasa todas las piezas, y los actores conectan a la perfección. Si no fuera por el villano (otra vez), sería la primera de la lista.', 
  urlimg: 'assets/353959.webp'),
  
 Movie(
  title: 'AVENGERS: ENDGAME', 
  desc: 'Era muy difícil superar lo que consiguieron con "Infinity War". Y por momentos están cerca de superarla, pero la sorpresa final de la anterior es imposible de rebasar. Aún así, es el homenaje perfecto a los fans y a 10 años de MCU, con mucho fan service, que nunca viene mal.', 
  urlimg: 'assets/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg'),

 Movie(
  title: 'CAPTAIN AMERICA: THE WINTER SOLDIER', 
  desc: 'Cuando Marvel se puso seria, y empezó a tomarse en serio. Película de acción, sí, pero también de espionaje, a la vieja usanza, sin un gran supervillano, o escenas de pelea con cientos de extras y CGI. No. Aquí lo importante son los personajes, y la revelación de Hydra aún hoy pone los pelos de punta. Cambió el MCU para siempre.', 
  urlimg: 'assets/caws.jpg'),

 Movie(
  title: 'THE AVENGERS', 
  desc: 'Si alguien te pregunta cómo sería un blockbuster perfecto, ya sabes cuál debe de ser tu respuesta: "Los Vengadores". Joss Whedon tiene carta blanca para hacer lo que quiera, y el resultado es la mejor película del MCU, con todos los personajes aportando a la trama y con uno de los villanos más icónicos del cine reciente: Loki.', 
  urlimg: 'assets/avengers.jpg'),

 Movie(
  title: 'IRONMAN', 
  desc: 'El pistoletazo de salida del MCU. El humor, la acción realista... muchos de los puntos que tendrá el universo Marvel están aquí, pero quizá le falta un poco de riesgo', 
  urlimg: 'assets/iron man.jpg'),

 Movie(
  title: 'CAPTAN AMERICA: CIVIL WAR', 
  desc: 'Esta nueva película de la saga Capitán América nos dio la mayor división a la que se han enfrentado los héroes, y una pelea entre todos ellos apoteósica. ¿Lo bueno de esta entrega? Que el supervillano es un humano normal y corriente. Así tendría que haber sido "La era de Ultrón".', 
  urlimg: 'assets/cacv.jpg'),

 Movie(
  title: 'THOR: RAGNAROK', 
  desc: 'Taika Waitit entró en Marvel como un elefante en una cacharrería y funcionó. Se nota que no solo él se lo pasa bien, sino todos los personajes. Cate Blanchett nunca ha estado más divertida, Loki logra que empaticemos con él, y uno de los villanos es Jeff Goldblum. Quizá podría haber sido un poco más valiente en algunas cosas (Valkiria, por ejemplo), pero es la película más divertida del MCU, y se nota.', 
  urlimg: 'assets/thor.jpg'),

 Movie(
  title: 'BLACK PANTHER', 
  desc: 'Marvel se sale de su canon y reinterpreta la historia de "El rey león" a su manera, con superhéroes y tecnología. Killmonger es el villano más interesante del MCU y la sensación de estar viendo algo diferente se adueña del espectador a cada minuto aunque quizá pierda los papeles en la batalla final', 
  urlimg: 'assets/black panther.jpg'),
 
 Movie(
  title:  'SPIDER-MAN: NO WAY HAME', 
  desc: 'Encumbrada por las sorpresas que encierra su metraje, lo cierto es que la tercera entrega del Spidey de Tom Holland tiene una trama muy absurda y las peores set pieces de acción que recordamos en mucho tiempo en el MCU. Pero todo lo compensa con nostalgia con guiños al público y con un final bastante emotivo.', 
  urlimg: 'assets/spiderman.jpg'),


] ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies ranking'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
       return Card(
            margin: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailScreen(movie: movie),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset(
                      movie.urlimg,
                      width: 100,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            movie.desc,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
