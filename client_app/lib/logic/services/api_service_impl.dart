// 📦 Package imports:

// 🌎 Project imports:

import 'package:dio/dio.dart';
import 'package:kavach/models/requests/fetch_spam_message_data.dart';
import 'package:kavach/models/responses/api_response.dart';
import 'package:kavach/models/responses/spam_message_response.dart';

import '../clients/api_client.dart';
import 'api_service.dart';

class ApiServiceImpl extends ApiService {
  late final ApiClient _apiClient;
  late final Dio dio;

  ApiServiceImpl() {
    dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(milliseconds: 20000),
      ),
    );
    _apiClient = ApiClient(dio);
  }
  @override
  Future<ApiResponse<SpamMessageData>> fetchSpamMessgageData(
      {required String sms}) async {
    try {
      final response = await _apiClient.checkSpamMessage(
              spamMessageResponse: SpamMessageResponse(sms: sms))
          as Map<String, dynamic>;
      print(response['success']);
      if (response['success']) {
        return ApiResponse.success(SpamMessageData(
            data: [response['data'][0], response['data'][1]], success: true));
      }
      return ApiResponse.error('Data not found');
    } catch (e) {
      print('object');
      return ApiResponse.error('Something Went Wrong');
    }
  }
}
