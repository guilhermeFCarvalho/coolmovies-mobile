import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coolmovies/app/core/failures/failure.dart';
import 'package:coolmovies/app/core/shared/common/common_state.dart';
import 'package:coolmovies/app/features/movies_list/domain/entities/movies/movie_entity.dart';
import 'package:coolmovies/app/features/movies_list/domain/repositories/movies_repository.dart';
import 'package:coolmovies/app/features/movies_list/infra/repositories/movies_repository_impl.dart';
import 'package:coolmovies/app/features/movies_list/presentation/blocs/movies/movie_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

typedef MovieState = CommonState<Failure, List<MovieEntity>>;

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MoviesRepository _repository;

  MovieBloc(this._repository) : super(const MovieState.loadInProgress()) {
    on<MovieEvent>((event, emit) async {
      await event.when<Future<void>>(
        movieFetched: () => onMoviesFetched(emit),
      );
    });
  }

  Future<void> onMoviesFetched(emit) async {
    final result = await _repository.fetchMovies();
    result.fold(
      (failure) => emit(MovieState.loadFailure(failure)),
      (list) => emit(
        MovieState.loadSuccess(list),
      ),
    );
  }
}

final movieBlocInstance =
    GetIt.I.registerSingleton(MovieBloc(movieRepositoryInstance));
