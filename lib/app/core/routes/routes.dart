import 'package:coolmovies/app/features/movies/domain/entities/movies/movie_entity.dart';
import 'package:coolmovies/app/features/movies/presentation/pages/movie_details_page.dart';
import 'package:coolmovies/app/features/movies/presentation/pages/movies_page.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (__, _) => const MoviesPage(),
    ),
    GoRoute(
      path: '/movie-details',
      builder: (__, state) {
        final MovieEntity movieEntity = state.extra as MovieEntity;
        return MovieDetailsPage(
          movieEntity: movieEntity,
        );
      },
    ),
  ],
);
