import 'package:coolmovies/app/features/movies/presentation/blocs/movies/movie_bloc.dart';
import 'package:coolmovies/app/features/movies/presentation/blocs/movies/movie_event.dart';
import 'package:coolmovies/app/features/movies/presentation/widgets/movie_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

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
        centerTitle: true,
        title: const Text('coolmovies'),
      ),
      body: BlocBuilder<MovieBloc, MovieState>(
        bloc: bloc,
        builder: (_, state) {
          return state.maybeWhen(
            loadSuccess: (data) {
              final list = [
                ...data,
                ...data.reversed,
                ...data,
                ...data.reversed
              ];
              return CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      children: list
                          .map(
                            (movie) => MovieCardWidget(
                              movieEntity: movie,
                              onTap: () => context.push(
                                '/movie-details',
                                extra: movie,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  )
                ],
              );
            },
            loadInProgress: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (failure) => const Text('failure'),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
