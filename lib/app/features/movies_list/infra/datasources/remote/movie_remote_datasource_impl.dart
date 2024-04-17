import 'package:coolmovies/app/core/failures/failure.dart';
import 'package:coolmovies/app/features/movies_list/domain/datasources/remote/movie_remote_datasource.dart';
import 'package:coolmovies/app/features/movies_list/domain/entities/movies/movie_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';

class MovieRemoteDatasourceImpl implements MovieRemoteDatasource {
  @override
  Future<Either<Failure, List<MovieEntity>>> fetchMovies() async {
    try {
      final result = await Future.delayed(
        const Duration(seconds: 2),
        () => List.generate(
          5,
          (index) => MovieEntity(name: 'movie $index', review: index),
        ),
      );
      return right(result);
    } catch (e) {
      return left(Failure.undefined);
    }
  }
}

  final movieDatasourceInstance = GetIt.I.registerSingleton<MovieRemoteDatasource>(MovieRemoteDatasourceImpl());



