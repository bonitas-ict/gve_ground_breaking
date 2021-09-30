part of 'agenda_detail_bloc.dart';

@freezed
class AgendaDetailState  with _$AgendaDetailState {
  const factory AgendaDetailState.initial() = _Initial;
  const factory AgendaDetailState.loadInProgress() = _LoadInProgress;
  const factory AgendaDetailState .loadSuccess(Agenda agendas, List<Speaker> speakers) = _LoadSuccess;
  const factory AgendaDetailState .loadFailure(NetworkFailure networkFailure, int agendaId) =_LoadFailure;
}
