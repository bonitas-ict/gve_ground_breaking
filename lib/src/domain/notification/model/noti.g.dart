// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noti.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationMessage _$_$_NotificationMessageFromJson(
    Map<String, dynamic> json) {
  return _$_NotificationMessage(
    title: json['title'] as String?,
    body: json['body'] as String?,
    time: json['time'] as int,
    isRead: json['isRead'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_NotificationMessageToJson(
        _$_NotificationMessage instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'time': instance.time,
      'isRead': instance.isRead,
    };
