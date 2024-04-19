import 'package:coolmovies/app/features/movies/domain/entities/movies/movie_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieCardWidget extends StatelessWidget {
  final MovieEntity movieEntity;
  final void Function() onTap;
  const MovieCardWidget({
    super.key,
    required this.movieEntity,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: ClipRRect(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                movieEntity.imgUrl ?? '',
                fit: BoxFit.cover,
              ),
            ),
            _buildGradient(),
            _buildTitleAndSubtitle(
              title: movieEntity.title,
              directorName: movieEntity.movieDirectorName,
              releaseYear: movieEntity.releaseDate.year.toString(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildGradient() {
  return Positioned.fill(
    child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [.08, .55],
        ),
      ),
    ),
  );
}

Widget _buildTitleAndSubtitle({
  required String title,
  required String directorName,
  required String releaseYear,
}) {
  return Padding(
    padding: const EdgeInsets.all(6),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: ' $releaseYear',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          directorName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    ),
  );
}
