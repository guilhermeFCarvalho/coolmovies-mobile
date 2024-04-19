import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_event.freezed.dart';

@freezed
abstract class MovieEvent with _$MovieEvent {
  factory MovieEvent.movieFetched() = _MovieFetched;
}
