import 'package:coolmovies/app/core/failures/failure.dart';
import 'package:coolmovies/app/core/http/http_client.dart';
import 'package:coolmovies/app/features/movies/domain/datasources/remote/movie_remote_datasource.dart';
import 'package:coolmovies/app/features/movies/domain/entities/movies/movie_entity.dart';
import 'package:coolmovies/app/features/movies/infra/dtos/movie_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MovieRemoteDatasourceImpl implements MovieRemoteDatasource {
  final GraphQLClient client;

  MovieRemoteDatasourceImpl(this.client);
  @override
  Future<Either<Failure, List<MovieEntity>>> fetchMovies() async {
    try {
      final QueryResult result = await client.query(
        QueryOptions(
          document: gql(r"""
          query AllMovies {
            allMovies {
              nodes {
                id
                imgUrl
              movieDirectorByMovieDirectorId{
                name
              }
                title
                releaseDate
              movieReviewsByMovieId {
                nodes {
                  body
                  rating
                  title
                  userByUserReviewerId {
                    name
                  }
                }
              }
                
              }
            }
          }
        """),
        ),
      );

      final List<MovieEntity> list =
          (result.data?['allMovies']['nodes'] as Iterable)
              .map<MovieEntity>(
                (e) => MovieDto.fromMap(e),
              )
              .toList();

      return right(list);
    } catch (e) {
      return left(Failure.undefined);
    }
  }
}

final movieDatasourceInstance = GetIt.I
    .registerSingleton<MovieRemoteDatasource>(
        MovieRemoteDatasourceImpl(graphQLClient));
