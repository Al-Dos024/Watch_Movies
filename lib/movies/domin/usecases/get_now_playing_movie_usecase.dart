import 'package:watch_movies/movies/domin/entities/moive.dart';
import 'package:watch_movies/movies/domin/repository/base_movie_repository.dart';

class GetNowPlayingMovieUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMovieUsecase(this.baseMovieRepository);

  Future<List<Moive>> execute() async {
    return await baseMovieRepository.getNowPlaying();
  }
}
