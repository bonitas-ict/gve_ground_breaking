part of 'notification_count_bloc.dart';

@freezed
class NotificationCountState  with _$NotificationCountState  {
  const factory NotificationCountState.initial(num notificationCount) = _Initial;
  const factory NotificationCountState.loadInProgress(num notificationCount) = _LoadInProgress;
  const factory NotificationCountState.loadSuccess(num notificationCount) = _LoadSuccess;
  const factory NotificationCountState.loadFailure(num notificationCount, NetworkFailure networkFailure) =_LoadFailure;
}
