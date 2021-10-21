import 'package:freezed_annotation/freezed_annotation.dart';

part 'noti.freezed.dart';
part 'noti.g.dart';

@freezed
class NotificationMessage with _$NotificationMessage{
  const factory NotificationMessage({
    required String? title,
    required String? body,
    required String date,
    required bool status,
    required String plotId,
    required String amount,
    @Default(false) bool isRead,
  }) = _NotificationMessage;

  factory NotificationMessage.fromJson(Map<String, dynamic> json) => _$NotificationMessageFromJson(json);
}