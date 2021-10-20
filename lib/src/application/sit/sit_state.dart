part of 'sit_bloc.dart';

@freezed
class SitState with _$SitState {
  const factory SitState.initial() = _Initial;
  const factory SitState.loadInProgress() = _LoadInProgress;
  const factory SitState.loadSuccess(Seat seatInfo) = _LoadSuccess;
  const factory SitState.loadFailure(NetworkFailure networkFailure) =_LoadFailure;
}
