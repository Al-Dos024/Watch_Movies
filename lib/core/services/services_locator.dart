import 'package:get_it/get_it.dart';
import 'package:watch_movies/movies/data/datasource/movie_remote_datasource.dart';
import 'package:watch_movies/movies/data/repository/movies_repository.dart';
import 'package:watch_movies/movies/domin/repository/base_movie_repository.dart';
import 'package:watch_movies/movies/domin/usecases/get_now_playing_movie_usecase.dart';
import 'package:watch_movies/movies/domin/usecases/get_popular_movie_usecase.dart';
import 'package:watch_movies/movies/domin/usecases/get_top_rated_movie_usecase.dart';
import 'package:watch_movies/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    /// Bloc
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));

    /// Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMovieUsecase(sl()));
    sl.registerLazySingleton(() => GetPopularMovieUsecase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMovieUsecase(sl()));

    /// Repository
    sl.registerLazySingleton<BaseMovieRepository>(() => MoviesRepository(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
