import 'package:coolmovies/app/features/movies/domain/entities/reviews/review_entity.dart';
import 'package:flutter/material.dart';

class ReviewCardWidget extends StatelessWidget {
  final ReviewEntity reviewEntity;
  const ReviewCardWidget({
    super.key,
    required this.reviewEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            reviewEntity.title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              reviewEntity.rating,
              (index) => const Icon(Icons.star),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          RichText(
            text: TextSpan(
              text: 'Reviewed by: ',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: reviewEntity.user,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(reviewEntity.body)
        ],
      ),
    );
  }
}
