import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kavach/models/requests/fetch_spam_message_data.dart';

import '../../logic/services/api_service.dart';
import '../../models/responses/api_response.dart';

part 'home_page_model.freezed.dart';

final homePageProvider =
    StateNotifierProvider.autoDispose<MainPageModel, MainPageState>(
  (ref) => MainPageModel(
    apiService: ref.read(apiServiceProvider),
  ),
);

class MainPageModel extends StateNotifier<MainPageState> {
  final ApiService apiService;

  MainPageModel({
    required this.apiService,
  }) : super(const MainPageState()) {}

  Future<String> checkSpamMessage() async {
    if (state.sms == '') {
      return 'Please Type Something';
    }
    state = state.copyWith(loadingStatus: LoadingStatus.loading);
    await Future.delayed(const Duration(seconds: 2));
    final response = await apiService.fetchSpamMessgageData(sms: state.sms);

    if (response.status != ApiStatus.success) {
      state = state.copyWith(
        loadingStatus: LoadingStatus.error,
      );

      return 'Something Went Wrong';
    }
    state = state.copyWith(
      data: response.data!,
      loadingStatus: LoadingStatus.loaded,
    );
    return response.data!.data;
  }

  setSmsMessage(String sms) {
    state = state.copyWith(sms: sms);
  }
}

@freezed
class MainPageState with _$MainPageState {
  const factory MainPageState({
    @Default(LoadingStatus.initial) LoadingStatus loadingStatus,
    SpamMessageData? data,
    @Default('') String sms,
  }) = _MainPageState;
}

enum LoadingStatus {
  initial,
  loading,
  loaded,
  error,
}
