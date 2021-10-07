part of 'land_info_bloc.dart';

@freezed
class LandInfoState with _$LandInfoState {
  const factory LandInfoState.initial() = _Initial;
  const factory LandInfoState.loadInProgress() = _LoadInProgress;
  const factory LandInfoState.loadSuccess(List<PlotCategory> plotCategories) = _LoadSuccess;
  const factory LandInfoState.loadFailure(NetworkFailure networkFailure) =_LoadFailure;
}

