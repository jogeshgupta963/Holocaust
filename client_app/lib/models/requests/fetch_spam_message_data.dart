import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_spam_message_data.g.dart';

@JsonSerializable()
class SpamMessageData {
  final List<double>? data;

  final bool success;

  const SpamMessageData({
    this.data,
    required this.success,
  });

  Map<String, dynamic> toJson() => _$SpamMessageDataToJson(this);
}
