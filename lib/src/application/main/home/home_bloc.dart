import 'package:bloc/bloc.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:gve_opening/src/domain/main/i_main_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required IMainFacade mainFacade}) : _mainFacade = mainFacade, super(const HomeState.initial());
  final IMainFacade _mainFacade;

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(getDashboardInfo: _mapGetDashboardInfoToState);
  }

  Stream<HomeState> _mapGetDashboardInfoToState(_) async* {
    yield const HomeState.loadInProgress();
    final data = await _mainFacade.fetchDashboardInfo();
    yield data.fold((f) => HomeState.loadFailure(f), (r) {
      return HomeState.loadSuccess(r.agenda, r.timestamp);
    });
  }
}
