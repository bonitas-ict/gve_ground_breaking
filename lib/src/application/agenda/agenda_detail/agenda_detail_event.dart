part of 'agenda_detail_bloc.dart';

@freezed
class AgendaDetailEvent with _$AgendaDetailEvent {
  const factory AgendaDetailEvent.getAgendaDetails(int agendaID) = _GetAgendaDetails;
}
