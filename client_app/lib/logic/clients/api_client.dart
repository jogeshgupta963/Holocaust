import 'package:dio/dio.dart';
import 'package:kavach/models/responses/spam_message_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'http://172.16.131.13:5000')
abstract class ApiClient {
  factory ApiClient(
    Dio dio, {
    String baseUrl,
  }) = _ApiClient;
  @POST('/api/spam/sms/')
  Future checkSpamMessage({
    @Body() required SpamMessageResponse spamMessageResponse,
  });
}
