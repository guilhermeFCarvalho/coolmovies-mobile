import 'package:coolmovies/app/features/movies/domain/entities/movies/movie_entity.dart';
import 'package:coolmovies/app/features/movies/domain/entities/reviews/review_entity.dart';
import 'package:coolmovies/app/features/movies/infra/dtos/review_dto.dart';
import 'package:flutter/cupertino.dart';

@immutable
class MovieDto {
  static MovieEntity fromMap(Map<String, dynamic> map) {
    return MovieEntity(
      id: map['id'],
      title: map['title'],
      movieDirectorName: map['movieDirectorByMovieDirectorId']['name'],
      releaseDate: DateTime.parse(map['releaseDate']),
      reviews: map['movieReviewsByMovieId']['nodes']
          .map<ReviewEntity>(
            (e) => ReviewDto.fromMap(e),
          )
          .toList(),
      imgUrl: map['imgUrl'],
    );
  }
}
