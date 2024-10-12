import 'package:watch_movies/movies/domin/entities/moive.dart';

abstract class BaseMovieRepository {
  Future<List<Moive>> getNowPlaying();

  Future<List<Moive>> getPopularMovies();

  Future<List<Moive>> getTopRatedMoives();
}
