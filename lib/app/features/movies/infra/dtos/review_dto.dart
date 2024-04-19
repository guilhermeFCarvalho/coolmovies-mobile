import 'package:coolmovies/app/features/movies/domain/entities/reviews/review_entity.dart';
import 'package:flutter/cupertino.dart';

@immutable
class ReviewDto {
  static ReviewEntity fromMap(Map<String, dynamic> map) {
    return ReviewEntity(
      title: map['title'],
      body: map['body'],
      rating: map['rating'],
      user: map['userByUserReviewerId']['name'],
    );
  }
}
