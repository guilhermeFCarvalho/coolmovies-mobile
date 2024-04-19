import 'package:coolmovies/app/core/failures/failure.dart';
import 'package:coolmovies/app/features/movies/domain/entities/movies/movie_entity.dart';
import 'package:dartz/dartz.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<MovieEntity>>> fetchMovies();
}
