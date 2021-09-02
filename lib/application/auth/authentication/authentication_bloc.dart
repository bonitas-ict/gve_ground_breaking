import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState.initial());

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    yield* event.map(
      unAuthenticatedEvent: (e) async* {
        yield AuthenticationState.unAuthenticated();
      },
      authenticatedEvent: (_) async* {
        yield AuthenticationState.authenticated();
      }
    );
  }
}
