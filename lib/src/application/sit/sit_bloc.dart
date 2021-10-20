import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sit_event.dart';
part 'sit_state.dart';
part 'sit_bloc.freezed.dart';

@injectable
class SitBloc extends Bloc<SitEvent, SitState> {
  final ISitFacade  _sitFacade;
  SitBloc({required ISitFacade sitFacade}) :_sitFacade = sitFacade, super(const SitState.initial()) {
    on<_Initialize>((event, emit) async{
      emit(const SitState.loadInProgress());
      final data = await _sitFacade.initializeSit();
      emit(data.fold((f) => SitState.loadFailure(f), (r) {
        final sp = Seat.fromJson(r.data);
        return SitState.loadSuccess(sp);
      }));
    });
  }
}
