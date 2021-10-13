part of 'payment_init_bloc.dart';

@freezed
class PaymentInitEvent with _$PaymentInitEvent {
  const factory PaymentInitEvent.initPayment(String plotId) = _InitPayment;
}
