import 'package:freezed_annotation/freezed_annotation.dart';

part 'spam_message_response.g.dart';

@JsonSerializable()
class SpamMessageResponse {
  final String sms;

  const SpamMessageResponse({
    required this.sms,
  });

  factory SpamMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$SpamMessageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SpamMessageResponseToJson(this);
}
