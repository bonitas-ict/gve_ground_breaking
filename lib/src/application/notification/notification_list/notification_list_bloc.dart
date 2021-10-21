import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_list_event.dart';
part 'notification_list_state.dart';
part 'notification_list_bloc.freezed.dart';

@injectable
class NotificationListBloc extends Bloc<NotificationListEvent, NotificationListState> {
  final INotificationFacade _notificationFacade;
  NotificationListBloc({required INotificationFacade notificationFacade}) : _notificationFacade = notificationFacade,  super(const NotificationListState.initial()) {
    on<_LoadNotifications>((event, emit) async {
      emit(const NotificationListState.loadInProgress());
      final data = await _notificationFacade.fetchNotification();
      emit(data.fold((f) => NotificationListState.loadFailure(f), (r) {
        final pp = (r.data as List<dynamic>).map((e) => NotificationMessage.fromJson(e as Map<String,dynamic>)).toList();
        return NotificationListState.loadSuccess(pp);
      }));
    });
  }
}
