part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.verifiedState() = VerifiedStateEvent;
  const factory AuthenticationEvent.switchAppState(AppState appState) = SwitchAppState;
}
