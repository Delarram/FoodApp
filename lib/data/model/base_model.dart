import 'package:dio/dio.dart';
import 'package:foodapp/network/movie_api.dart';
import '../../resource/api_constant.dart';


abstract class BaseModel {
  late MovieApi mTheApi;
  BaseModel() {
    final dio = Dio(
      BaseOptions(
        followRedirects: false,
        baseUrl: aBaseUrlDev,
        validateStatus: (status) {
          return status! < 300;
        },
      ),
    );
    // dio.interceptors.add(alice.getDioInterceptor());
    mTheApi = MovieApi(dio);
  }
}
