import 'package:equatable/equatable.dart';

class Moive extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final double releaseDate;

  const Moive(
      {required this.id,
      required this.title,
      required this.backdropPath,
      required this.genreIds,
      required this.overview,
      required this.voteAverage,
      required this.releaseDate});

  @override
  List<Object?> get props =>
      [id, title, backdropPath, genreIds, overview, voteAverage, releaseDate];
}
