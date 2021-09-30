import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda_speaker_event.dart';
part 'agenda_speaker_state.dart';
part 'agenda_speaker_bloc.freezed.dart';

@injectable
class AgendaSpeakerBloc extends Bloc<AgendaSpeakerEvent, AgendaSpeakerState> {
  final IAgendaFacade _agendaFacade;

  AgendaSpeakerBloc({required  IAgendaFacade agendaFacade}) :_agendaFacade = agendaFacade, super(const AgendaSpeakerState.initial()) {
    on<_GetAgendaSpeakerDetails>((event, emit) async{
      emit(const AgendaSpeakerState.loadInProgress());
      final data = await _agendaFacade.fetchAgendaSpeaker(event.agendaSpeakeID);
      emit(data.fold((f) => AgendaSpeakerState.loadFailure(f,event.agendaSpeakeID), (r) {
        return AgendaSpeakerState.loadSuccess(r.speaker);
      }));
    });
  }
}
