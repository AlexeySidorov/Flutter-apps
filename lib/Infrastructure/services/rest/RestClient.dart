import 'package:arkona_development/models/News.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'RestClient.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:8080/v1/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  
  @GET('news/getnews')
  Future<List<News>> getNews({@DioOptions() options});
}