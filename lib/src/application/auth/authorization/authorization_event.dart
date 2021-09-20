part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.pinChanged(String pin) = _PinChanged;
  const factory AuthorizationEvent.verifyPin() = _VerifyPin;
}
