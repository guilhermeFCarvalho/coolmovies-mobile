import 'package:coolmovies/app/core/failures/failure.dart';
import 'package:coolmovies/app/features/movies_list/domain/entities/movies/movie_entity.dart';
import 'package:dartz/dartz.dart';

abstract class MovieRemoteDatasource {
  Future<Either<Failure, List<MovieEntity>>> fetchMovies();
}
