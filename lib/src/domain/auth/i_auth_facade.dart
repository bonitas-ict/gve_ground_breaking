import 'package:dartz/dartz.dart';
import '../domain.dart';

/// A CONTRACT/SIGNATURE CLASS FOR VARYING IMPLEMENTATION OF AUTH MECHANISM
/// THE CORE IDEOLOGY IS FOR DEPENDENCY INVERSION PRINCIPLE AND SUBSTITUTION.
abstract class IAuthFacade {
  Future<Either<NetworkFailure, BaseResponse>> verifyBarCode(String pin);
  Future<Either<NetworkFailure, BaseResponse>> authenticateMe(String email, String phoneNumber);
  Future<Either<NetworkFailure, BaseResponse>> createAccount(String email, String phoneNumber, String name);
  Future<Either<NetworkFailure, BaseResponse>> verifyAuthCode(String verifyToken, String pin );

  Future<AppState> getAppState();
  Future<void> setAppState(AppState appState);
}