import 'package:coolmovies/app/features/movies/domain/entities/movies/movie_entity.dart';
import 'package:coolmovies/app/features/movies/presentation/widgets/review_card_widget.dart';
import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  final MovieEntity movieEntity;

  const MovieDetailsPage({
    super.key,
    required this.movieEntity,
  });

  @override
  Widget build(BuildContext context) {
    final releaseYear = movieEntity.releaseDate.year.toString();
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(
            mediaQuery.size.width,
            mediaQuery.size.height * .2,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: movieEntity.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: ' $releaseYear',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Directed by: ',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    children: [
                      TextSpan(
                        text: movieEntity.movieDirectorName,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        flexibleSpace: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                movieEntity.imgUrl ?? '',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [.05, .55],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Ratings',
            style: TextStyle(fontSize: 20),
          ),
          ...movieEntity.reviews
              .map(
                (review) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ReviewCardWidget(
                    reviewEntity: review,
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
