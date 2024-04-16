import 'package:coolmovies/app/features/movies_list/presentation/pages/movies_page.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (__, _) => const MoviesPage(),
  )
]);
