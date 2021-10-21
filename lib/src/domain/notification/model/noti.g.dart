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
    date: json['date'] as String,
    status: json['status'] as bool,
    plotId: json['plotId'] as String,
    amount: json['amount'] as String,
    isRead: json['isRead'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_NotificationMessageToJson(
        _$_NotificationMessage instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'date': instance.date,
      'status': instance.status,
      'plotId': instance.plotId,
      'amount': instance.amount,
      'isRead': instance.isRead,
    };
