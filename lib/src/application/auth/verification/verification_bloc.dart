import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:gve_opening/injection.dart';
import 'package:gve_opening/src/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../infrastructure/infrastructure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_event.dart';
part 'verification_state.dart';
part 'verification_bloc.freezed.dart';

@injectable
class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  VerificationBloc({required this.iAuthFacade}) : super(VerificationState.initial());
  final IAuthFacade iAuthFacade;

  @override
  Stream<VerificationState> mapEventToState(
    VerificationEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async*{
        yield state.copyWith(authFailureOrSuccessOption: none(), email: e.email);
      },   
      phoneNumberChanged: (e) async*{
        yield state.copyWith(authFailureOrSuccessOption: none(), phoneNumber: e.phoneNumber);
      }, 
      nameChanged: (e) async*{
        yield state.copyWith(authFailureOrSuccessOption: none(), name: e.name);
      },
      verifyUser: _mapVerifyUserToState, 
      createUser:_mapCreateUserToState
    );
  }

  Stream<VerificationState> _mapVerifyUserToState(_) async*{
    Either<NetworkFailure, BaseResponse>? failureOrSuccess;
    if(!state.isSubmitting){
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await iAuthFacade.authenticateMe(state.email, state.phoneNumber);
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption:optionOf(failureOrSuccess),
      );
    }
  }

  Stream<VerificationState> _mapCreateUserToState(_) async*{
    Either<NetworkFailure, BaseResponse>? failureOrSuccess;
    if(!state.isSubmitting){
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await iAuthFacade.createAccount(state.email, state.phoneNumber, state.name);
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption:optionOf(failureOrSuccess),
      );
    }
  }
}
