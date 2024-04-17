import 'package:coolmovies/app/core/failures/failure.dart';
import 'package:coolmovies/app/features/movies_list/domain/datasources/remote/movie_remote_datasource.dart';
import 'package:coolmovies/app/features/movies_list/domain/entities/movies/movie_entity.dart';
import 'package:coolmovies/app/features/movies_list/domain/repositories/movies_repository.dart';
import 'package:coolmovies/app/features/movies_list/infra/datasources/remote/movie_remote_datasource_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MovieRemoteDatasource datasource;

  MoviesRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchMovies() async {
    final result = await datasource.fetchMovies();
    return result;
  }
}

final movieRepositoryInstance = GetIt.I.registerSingleton<MoviesRepository>(
  MoviesRepositoryImpl(movieDatasourceInstance),
);
