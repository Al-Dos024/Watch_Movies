import 'package:dartz/dartz.dart';
import 'package:watch_movies/core/utils/error/failure.dart';
import 'package:watch_movies/movies/domin/entities/moive.dart';
import 'package:watch_movies/movies/domin/repository/base_movie_repository.dart';

class GetTopRatedMovieUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMovieUsecase(this.baseMovieRepository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
