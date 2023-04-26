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

  Future<SpamMessageData> checkSpamMessage() async {
    // if (state.sms == '') {
    //   state = state.copyWith(errorMessage: 'Please Type Something');
    //   return const SpamMessageData(success: false);
    // }

    state = state.copyWith(loadingStatus: LoadingStatus.loading);
    // await Future.delayed(const Duration(seconds: 2));
    final response = await apiService.fetchSpamMessgageData(sms: state.sms);

    if (response.status != ApiStatus.success) {
      state = state.copyWith(
        errorMessage: 'Something Went Wrong',
        loadingStatus: LoadingStatus.error,
      );

      return const SpamMessageData(success: false);
    }
    state = state.copyWith(
      data: response.data!,
      loadingStatus: LoadingStatus.loaded,
    );
    print(response.data);
    return SpamMessageData(data: response.data!.data, success: true);
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
    @Default('') String errorMessage,
  }) = _MainPageState;
}

enum LoadingStatus {
  initial,
  loading,
  loaded,
  error,
}
