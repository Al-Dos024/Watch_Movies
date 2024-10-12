import 'package:dartz/dartz.dart';
import 'package:watch_movies/core/utils/error/failure.dart';
import 'package:watch_movies/movies/domin/entities/moive.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
