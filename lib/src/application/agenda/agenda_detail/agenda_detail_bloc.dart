import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agenda_detail_event.dart';
part 'agenda_detail_state.dart';
part 'agenda_detail_bloc.freezed.dart';

@injectable
class AgendaDetailBloc extends Bloc<AgendaDetailEvent, AgendaDetailState> {
  final IAgendaFacade _agendaFacade;

  AgendaDetailBloc({required  IAgendaFacade agendaFacade}) :_agendaFacade = agendaFacade, super(const AgendaDetailState.initial()) {
    on<_GetAgendaDetails>((event, emit) async {
      emit(const AgendaDetailState.loadInProgress());
      final data = await _agendaFacade.fetchAgendaDetail(event.agendaID);
      emit(data.fold((f) => AgendaDetailState.loadFailure(f,event.agendaID), (r) {
        return AgendaDetailState.loadSuccess(r.agenda, r.speakers);
      }));
    });
  }
}
