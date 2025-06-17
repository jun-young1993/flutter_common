// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      text: json['text'] as String,
      senderType:
          $enumDecode(_$ChatMessageSenderTypeEnumMap, json['senderType']),
      toolCalls: (json['toolCalls'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'senderType': _$ChatMessageSenderTypeEnumMap[instance.senderType]!,
      'toolCalls': instance.toolCalls,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$ChatMessageSenderTypeEnumMap = {
  ChatMessageSenderType.user: 'user',
  ChatMessageSenderType.assistant: 'assistant',
};
