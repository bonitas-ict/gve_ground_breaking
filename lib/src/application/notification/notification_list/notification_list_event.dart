part of 'notification_list_bloc.dart';

@freezed
class NotificationListEvent with _$NotificationListEvent {
  const factory NotificationListEvent.loadNotifications() = _LoadNotifications;
}

