import 'package:dartz/dartz.dart';
import 'package:watch_movies/core/error/failure.dart';
import 'package:watch_movies/core/usecase/base_usecase.dart';
import 'package:watch_movies/movies/domain/entities/movie.dart';
import 'package:watch_movies/movies/domain/repository/base_movies_repository.dart';

class GetNowPlayingMoviesUseCase
    extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
