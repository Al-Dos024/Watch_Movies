import 'package:dartz/dartz.dart';
import 'package:watch_movies/core/error/failure.dart';
import 'package:watch_movies/movies/domain/entities/movie.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
