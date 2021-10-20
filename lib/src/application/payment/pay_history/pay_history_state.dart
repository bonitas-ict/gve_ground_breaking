part of 'pay_history_bloc.dart';

@freezed
class PayHistoryState with _$PayHistoryState {
  const factory PayHistoryState.initial() = _Initial;
  const factory PayHistoryState.loadInProgress() = _LoadInProgress;
  const factory PayHistoryState.loadSuccess(List<PayHistory> paymentHistory) = _LoadSuccess;
  const factory PayHistoryState.loadFailure(NetworkFailure networkFailure) =_LoadFailure;
}
