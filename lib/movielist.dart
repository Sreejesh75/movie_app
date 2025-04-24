import 'movies.dart';

class MovieList {
  int _movieNumber = 0;

  final List<Movies> _movieList = [
    Movies(
      p: 'https://resizing.flixster.com/GCgOO41n1FyVlVLPB65_EenHYmo=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzllM2JlNGQzLWNhYWYtNDBiMy1iNzAyLWIwZGU2NzBlMjczYS5qcGc=',
      T: 'ALAPUZHA GYMKHANA \n sports/Drama',
    ),
    Movies(
      p: 'https://upload.wikimedia.org/wikipedia/en/0/07/Romancham-poster.jpg',
      T: 'Romancham \n Horror/Comedy',
    ),
    Movies(
      p: 'https://filmydrip.com/wp-content/uploads/2024/04/Untitled-7.webp',
      T: 'Aavesham \n Action/Comedy',
    ),
    Movies(
      p: 'https://harkinsposters.imgix.net/HO00013805_poster?q=80&auto=format,compress&w=456',
      T: 'Lucifer \n Action/Thriller',
    ),
  ];

  void nextMovie() {
    if (_movieNumber < _movieList.length - 1) {
      _movieNumber++;
    }
  }

  String getMoviePoster() {
    return _movieList[_movieNumber].moviePoster;
  }

  String getMovieText() {
    return _movieList[_movieNumber].movieText;
  }
}
