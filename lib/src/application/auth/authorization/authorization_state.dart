part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState({
    required String pin,
    required bool isSubmitting,
    required Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption,
  }) = _AuthorizationState;

  factory AuthorizationState.initial() => AuthorizationState(pin: '', isSubmitting: false, authFailureOrSuccessOption: none());
}

