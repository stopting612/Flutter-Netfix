enum ApiUrl {
  signup('api/v1/auth/signup'),
  signin('api/v1/auth/signin'),
  trendingMovies('api/v1/movie/trending'),
  nowPlayingMovies('api/v1/movie/nowplaying'),
  popularTV('api/v1/tv/popular'),
  movie('api/v1/movie/'),
  tv('api/v1/tv/'),
  search('api/v1/search/');

  // Associated value for each enum member
  final String path;

  const ApiUrl(this.path);

  // Shared constants (kept as static for reuse)
  static const String baseURL =
      'https://netflix-backend-production-8413.up.railway.app/';
  static const String trailerBase = 'https://www.youtube.com/watch?v=';

  // Optional: Method to get the full URL
  String get fullUrl => '$baseURL$path';
}
