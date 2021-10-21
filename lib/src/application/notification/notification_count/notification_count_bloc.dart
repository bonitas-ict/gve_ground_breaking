import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_count_event.dart';
part 'notification_count_state.dart';
part 'notification_count_bloc.freezed.dart';

@injectable
class NotificationCountBloc extends Bloc<NotificationCountEvent, NotificationCountState> {
  final INotificationFacade _notificationFacade;
  NotificationCountBloc({required INotificationFacade notificationFacade}) : _notificationFacade = notificationFacade, super(const  NotificationCountState.initial(0)) {
    on<_LoadNotificationCount>((event, emit) async{
      emit(NotificationCountState.loadInProgress(state.notificationCount));
      final data = await _notificationFacade.fetchUnReadCount();
      emit(data.fold((f) => NotificationCountState.loadFailure(state.notificationCount,f), (r) {
        return NotificationCountState.loadSuccess(r.data);
      }));
    });
  }
}
