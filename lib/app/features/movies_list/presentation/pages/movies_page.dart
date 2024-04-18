import 'package:coolmovies/app/features/movies_list/presentation/blocs/movies/movie_bloc.dart';
import 'package:coolmovies/app/features/movies_list/presentation/blocs/movies/movie_event.dart';
import 'package:coolmovies/app/features/movies_list/presentation/widgets/movie_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MoviesPage extends HookWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = movieBlocInstance;

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          bloc.add(MovieEvent.movieFetched());
        });
        return null;
      },
      const [],
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('coolmovies'),
        ),
        body: BlocBuilder<MovieBloc, MovieState>(
          bloc: bloc,
          builder: (_, state) {
            return state.maybeWhen(
              loadSuccess: (data) => ListView(
                children: data
                    .map(
                      (e) => MovieCardWidget(movieEntity: e),
                    )
                    .toList(),
              ),
              loadInProgress: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loadFailure: (failure) => const Text('failure'),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ));
  }
}
