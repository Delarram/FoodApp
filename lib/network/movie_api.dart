
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../resource/api_constant.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: aBaseUrlDev)
abstract class MovieApi{
  factory MovieApi(Dio dio, {String baseUrl}) = _MovieApi;

  @GET(endPointGetNowPlaying)
  Future<String> getMovies(
      @Query(paramApiKey) String apiKey,
      @Query(paramLanguage) String language,
      @Query(paramPage) String page,
      );
}

