import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:gve_opening/src/domain/land/land.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'land_info_event.dart';
part 'land_info_state.dart';
part 'land_info_bloc.freezed.dart';

@injectable
class LandInfoBloc extends Bloc<LandInfoEvent, LandInfoState> {

  final ILandFacade _landFacade;
  LandInfoBloc({required ILandFacade landFacade}) : _landFacade = landFacade, super(const LandInfoState.initial()) {
    on<_GetLandsInfo>((event, emit)async {
      emit(const LandInfoState.loadInProgress());
      final data = await _landFacade.fetchAllPlots();
      emit(data.fold((f) => LandInfoState.loadFailure(f), (r) {
      return LandInfoState.loadSuccess(r.plotCategories);
    }));
    });
  }
}
