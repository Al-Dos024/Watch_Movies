import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_movies/movies/domin/usecases/get_now_playing_movie_usecase.dart';
import 'package:watch_movies/movies/domin/usecases/get_popular_movie_usecase.dart';
import 'package:watch_movies/movies/domin/usecases/get_top_rated_movie_usecase.dart';
import 'package:watch_movies/movies/presentation/controller/movies_event.dart';
import 'package:watch_movies/movies/presentation/controller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMovieUsecase getNowPlayingMoviesUseCase;
  final GetPopularMovieUsecase getPopularMoviesUseCase;
  final GetTopRatedMovieUsecase getTopRatedMoviesUseCase;

  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUseCase,
  ) : super(const MoviesState()) {
    // on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);

    // on<GetPopularMoviesEvent>(_getPopularMovies);

    // on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }
}
