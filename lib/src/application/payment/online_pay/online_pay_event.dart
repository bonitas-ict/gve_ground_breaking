part of 'online_pay_bloc.dart';

@freezed
class OnlinePayEvent with _$OnlinePayEvent {
  const factory OnlinePayEvent.verifyPayment(String referenceId) = _VerifyPayment;
}
