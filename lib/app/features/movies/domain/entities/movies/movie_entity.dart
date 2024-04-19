import 'package:coolmovies/app/features/movies/domain/entities/reviews/review_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
class MovieEntity extends Equatable {
  final String id;
  final String title;
  final String? imgUrl;
  final String movieDirectorName;
  final DateTime releaseDate;
  final List<ReviewEntity> reviews;

  const MovieEntity({
    required this.id,
    required this.title,
    required this.movieDirectorName,
    required this.releaseDate,
    required this.reviews,
    this.imgUrl,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        movieDirectorName,
        releaseDate,
        imgUrl,
        reviews,
      ];
}
