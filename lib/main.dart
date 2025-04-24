import 'package:flutter/material.dart';
import 'package:movie_app/movielist.dart';
import 'movies.dart';

MovieList movielist = MovieList();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: MovieAppScreen(),
      ),
    );
  }
}

class MovieAppScreen extends StatefulWidget {
  const MovieAppScreen({super.key});

  @override
  State<MovieAppScreen> createState() => _MovieAppScreenState();
}

class _MovieAppScreenState extends State<MovieAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 140, 20, 20),
          child: Image.network(movielist.getMoviePoster(), height: 400),
        ),
        Text(
          movielist.getMovieText(),
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),

        IconButton(
          iconSize: 88,
          color: Colors.red,

          onPressed: () {
            setState(() {
              movielist.nextMovie();
            });
          },
          icon: Icon(Icons.navigate_next),
        ),
      ],
    );
  }
}
