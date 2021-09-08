import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gve_launch/application/application.dart';
import 'package:gve_launch/domain/domain.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required IAuthFacade iAuthFacade }) : _iAuthFacade = iAuthFacade, super(const AuthenticationState.initial());
  final IAuthFacade _iAuthFacade;

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    yield* event.map(
      verifiedState: _mapVerifiedStateToState, 
      switchAppState: _mapSwitchAppStateToState
    );
  }

  Stream<AuthenticationState> _mapVerifiedStateToState(_) async*{
    final AppState currentStatus = await _iAuthFacade.getAppState();
    switch(currentStatus){
      case AppState.ONBOARDING:
        yield AuthenticationState.firstRun();
        break;
      case AppState.AUTHENTICATED:
        yield AuthenticationState.authenticated();
        break;
      case AppState.PARTIALLY_AUTHENTICATED:
        yield AuthenticationState.partialAuthentication();
        break;
      case AppState.UNAUTHENTICATED:
        yield AuthenticationState.unAuthenticated();
        break;
    }
  }

  Stream<AuthenticationState> _mapSwitchAppStateToState(SwitchAppState value) async*{
    await _iAuthFacade.setAppState(value.appState);
    add(AuthenticationEvent.verifiedState());
  }


}
