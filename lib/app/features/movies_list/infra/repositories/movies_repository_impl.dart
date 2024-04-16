import 'package:coolmovies/app/core/failures/failure.dart';
import 'package:coolmovies/app/features/movies_list/domain/entities/movies/movie_entity.dart';
import 'package:coolmovies/app/features/movies_list/domain/repositories/movies_repository.dart';
import 'package:dartz/dartz.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  @override
  Future<Either<Failure, List<MovieEntity>>> fetchMovies() async {
    final result = await Future.delayed(
        const Duration(seconds: 2),
        () => List.generate(
            5, (index) => MovieEntity(name: 'movie $index', review: index)));

    return right(result);
  }
}
