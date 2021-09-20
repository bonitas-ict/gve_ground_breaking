import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';
part 'authorization_bloc.freezed.dart';

@injectable
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc({required this.iAuthFacade}) : super(AuthorizationState.initial());
  final IAuthFacade iAuthFacade;

  @override
  Stream<AuthorizationState> mapEventToState(
    AuthorizationEvent event,
  ) async* {
    yield* event.map(
      pinChanged: (e) async*{
        yield state.copyWith(authFailureOrSuccessOption: none(), pin: e.pin);
      },  
      verifyPin: _mapVerifyPinToState
    );
  }

  Stream<AuthorizationState> _mapVerifyPinToState(_) async*{
    Either<NetworkFailure, BaseResponse>? failureOrSuccess;
    if(!state.isSubmitting){
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await iAuthFacade.verifyBarCode(state.pin);
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption:optionOf(failureOrSuccess),
      );

    }
  }

}
