part of 'payment_init_bloc.dart';

@freezed
class PaymentInitState with _$PaymentInitState {
  const factory PaymentInitState.initial() = _Initial;
  const factory PaymentInitState.loadInProgress() = _LoadInProgress;
  const factory PaymentInitState.loadSuccess(PropertyInitDTO propertyInfo) = _LoadSuccess;
  const factory PaymentInitState.loadFailure(NetworkFailure networkFailure) =_LoadFailure;
}
