import 'package:dio/dio.dart';
import 'package:sokrio_assignment/src/core/constants/api_endpoints.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: ApiEndpoints.base)
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl, ParseErrorLogger errorLogger}) =
      _RestClient;

  @POST(ApiEndpoints.login)
  Future<HttpResponse> login(@Body() Map<String, dynamic> request);
}
