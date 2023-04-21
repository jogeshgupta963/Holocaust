import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_spam_message_data.g.dart';

@JsonSerializable()
class SpamMessageData {
  final String data;

  final bool success;

  const SpamMessageData({
    required this.data,
    required this.success,
  });

  Map<String, dynamic> toJson() => _$SpamMessageDataToJson(this);
}
