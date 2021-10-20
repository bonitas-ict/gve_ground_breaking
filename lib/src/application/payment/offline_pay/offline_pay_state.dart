 part of 'offline_pay_bloc.dart';

@freezed
class OfflinePayState with _$OfflinePayState {
  const factory OfflinePayState({
    required String plotId,
    required String referenceId,
    required bool isSubmitting,
    required Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption,
  }) = _OfflinePayState;

  factory OfflinePayState.initial() => OfflinePayState(plotId: '', referenceId: '',isSubmitting: false, authFailureOrSuccessOption: none());
}


