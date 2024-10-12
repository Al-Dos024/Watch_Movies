import 'package:watch_movies/movies/domin/entities/moive.dart';
import 'package:watch_movies/movies/domin/repository/base_movie_repository.dart';

class GetTopRatedMovieUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMovieUsecase(this.baseMovieRepository);

  Future<List<Moive>> execute() async {
    return await baseMovieRepository.getTopRatedMoives();
  }
}
