part of 'notification_list_bloc.dart';

@freezed
class NotificationListState  with _$NotificationListState  {
  const factory NotificationListState.initial() = _Initial;
  const factory NotificationListState.loadInProgress() = _LoadInProgress;
  const factory NotificationListState.loadSuccess(List<NotificationMessage> notifications) = _LoadSuccess;
  const factory NotificationListState.loadFailure(NetworkFailure networkFailure) =_LoadFailure;
}
