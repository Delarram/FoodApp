import 'package:foodapp/data/model/base_model.dart';
import 'package:foodapp/data/model/movie_model.dart';
import 'package:foodapp/data/vos/movie_vo.dart';

class MovieModelImpl extends BaseModel with MovieModel{


  @override
  Future<List<MovieVo>> getMovieList() {
    throw UnimplementedError();
  }

}