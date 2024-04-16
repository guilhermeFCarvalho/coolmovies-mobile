import 'package:coolmovies/app/features/movies_list/infra/repositories/movies_repository_impl.dart';
import 'package:coolmovies/app/features/movies_list/presentation/blocs/movies/movie_bloc.dart';
import 'package:coolmovies/app/features/movies_list/presentation/blocs/movies/movie_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MoviesPage extends HookWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = useState<MovieBloc>(MovieBloc(MoviesRepositoryImpl()));

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        bloc.value.add(MovieEvent.movieFetched());
      });
      return null;
    }, const []);
    return Scaffold(
        appBar: AppBar(
          title: const Text('coolmovies'),
        ),
        body: BlocBuilder<MovieBloc, MovieState>(
          bloc: bloc.value,
          builder: (context, state) {
            return state.maybeWhen(
              loadSuccess: (data) => ListView(
                children: data.map((e) => Text(e.name)).toList(),
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
