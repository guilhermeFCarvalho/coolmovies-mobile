import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String id;
  final String title;
  final String? imgUrl;
  final String movieDirectorId;
  final DateTime releaseDate;

  const MovieEntity({
    required this.id,
    required this.title,
    required this.movieDirectorId,
    required this.releaseDate,
    this.imgUrl,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        movieDirectorId,
        releaseDate,
      ];
}
