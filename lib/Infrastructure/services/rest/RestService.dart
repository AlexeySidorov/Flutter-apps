import 'package:arkona_development/Infrastructure/services/rest/RestClient.dart';
import 'package:arkona_development/models/News.dart';
import 'package:dio/dio.dart' hide Headers;

class RestService {
  RestClient _getClient({Dio dio}) {
    var dio1 = Dio();
    dio1.options.headers['Content-Type']='application/json';
    return RestClient(dio == null ? dio1 : dio);
  }

  ///Get news
  Future<List<News>> getNews() async {
    var getClient = _getClient();
    return await getClient.getNews();
  }
}
