part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = Initial;
  const factory AuthenticationState.authenticated() = Authenticated;
  const factory AuthenticationState.unAuthenticated() = UnAuthenticated;
  const factory AuthenticationState.partialAuthentication() = PartialAuthentication;
  const factory AuthenticationState.firstRun() = FirstRun;
}
