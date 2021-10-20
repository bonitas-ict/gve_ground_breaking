part of 'pay_history_bloc.dart';

@freezed
class PayHistoryEvent with _$PayHistoryEvent {
  const factory PayHistoryEvent.loadHistory() = _LoadHistory;
}
