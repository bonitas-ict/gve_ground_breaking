part of 'agenda_speaker_bloc.dart';


@freezed
class  AgendaSpeakerState with _$AgendaSpeakerState {
  const factory AgendaSpeakerState.initial() = _Initial;
  const factory AgendaSpeakerState.loadInProgress() = _LoadInProgress;
  const factory AgendaSpeakerState.loadSuccess(Speaker speaker) = _LoadSuccess;
  const factory AgendaSpeakerState.loadFailure(NetworkFailure networkFailure, int agendaSpeakerId) =_LoadFailure;
}
