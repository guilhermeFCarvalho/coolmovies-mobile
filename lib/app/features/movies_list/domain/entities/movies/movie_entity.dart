import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String name;
  final int review;

  const MovieEntity({
    required this.name,
    required this.review,
  });

  @override
  List<Object?> get props => [
        name,
        review,
      ];
}
