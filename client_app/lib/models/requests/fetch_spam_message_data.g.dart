// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_spam_message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpamMessageData _$SpamMessageDataFromJson(Map<String, dynamic> json) =>
    SpamMessageData(
      data: json['data'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$SpamMessageDataToJson(SpamMessageData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'success': instance.success,
    };
