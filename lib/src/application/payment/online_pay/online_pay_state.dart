part of 'online_pay_bloc.dart';

@freezed
class OnlinePayState with _$OnlinePayState {
  const factory OnlinePayState.initial() = _Initial;
  const factory OnlinePayState.loadInProgress() = LoadInProgressX;
  const factory OnlinePayState.loadSuccess(BaseResponse propertyInfo) = _LoadSuccess;
  const factory OnlinePayState.loadFailure(NetworkFailure networkFailure) =_LoadFailure;
}
