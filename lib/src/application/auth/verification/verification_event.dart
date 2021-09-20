part of 'verification_bloc.dart';


@freezed
class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.emailChanged(String email) = _EmailChanged;
  const factory VerificationEvent.phoneNumberChanged(String phoneNumber) = _PhoneNumberChanged;
  const factory VerificationEvent.nameChanged(String name) = _NameChanged;
  const factory VerificationEvent.verifyUser() = _VerifyUser;
  const factory VerificationEvent.createUser() = _CreateUser;
}
