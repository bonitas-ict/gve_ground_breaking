import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gve_opening/src/misc/debug_util.dart';

/// OBSERVE ALL BLOC EVENTS FROM ONE SINGLE POINT
/// THIS CLASS IS HELPFUL DURING DEVELOPMENT AS YOU CAN EASILY DEBUG AND SEE THE CURRENT STATE OF YOUR BLOC

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    printLn('${bloc.runtimeType} $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    printLn('${bloc.runtimeType} $transition');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    printLn('${bloc.runtimeType} $event');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    printLn('${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
