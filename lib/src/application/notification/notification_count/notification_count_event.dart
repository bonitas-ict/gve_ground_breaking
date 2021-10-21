part of 'notification_count_bloc.dart';

@freezed
class NotificationCountEvent with _$NotificationCountEvent {
  const factory NotificationCountEvent.loadNotificationCount() = _LoadNotificationCount;
}
