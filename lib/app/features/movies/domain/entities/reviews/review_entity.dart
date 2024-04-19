import 'package:equatable/equatable.dart';

class ReviewEntity extends Equatable {
  final String title;
  final String body;
  final int rating;
  final String user;

  const ReviewEntity({
    required this.title,
    required this.body,
    required this.rating,
    required this.user,
  });
  @override
  List<Object?> get props => [
        title,
        body,
        rating,
        user,
      ];
}
