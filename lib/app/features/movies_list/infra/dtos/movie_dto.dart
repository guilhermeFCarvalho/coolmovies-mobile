import 'package:coolmovies/app/features/movies_list/domain/entities/movies/movie_entity.dart';

class MovieDto {
  static MovieEntity fromMap(Map<String, dynamic> map) {
    return MovieEntity(
        id: map['id'],
        title: map['title'],
        movieDirectorId: map['movieDirectorId'],
        releaseDate: DateTime.parse(map['releaseDate']),
        imgUrl: map['imgUrl']);
  }
}
