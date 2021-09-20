part of 'verification_bloc.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    required String name,
    required String email,
    required String phoneNumber,
    required bool isSubmitting,
    required Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption,
  }) = _VerificationState;

  factory VerificationState.initial() => VerificationState(
    name: getIt<SharedPreferences>().getUserName() ?? '', 
    email: '',
    phoneNumber: '',  
    isSubmitting: false, 
    authFailureOrSuccessOption: none()
  );
}
