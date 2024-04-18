import 'package:coolmovies/app/features/movies_list/domain/entities/movies/movie_entity.dart';
import 'package:flutter/material.dart';

class MovieCardWidget extends StatelessWidget {
  final MovieEntity movieEntity;
  const MovieCardWidget({
    super.key,
    required this.movieEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(movieEntity.title),
        Text(movieEntity.releaseDate.toString()),
        Image.network(movieEntity.imgUrl ?? '')
      ],
    );
  }
}
