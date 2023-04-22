import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/requests/fetch_spam_message_data.dart';
import '../../models/responses/api_response.dart';
import 'api_service_impl.dart';

final apiServiceProvider = Provider<ApiService>(
  (ref) => ApiServiceImpl(),
);

abstract class ApiService {
  Future<ApiResponse<SpamMessageData>> fetchSpamMessgageData(
      {required String sms});
}
