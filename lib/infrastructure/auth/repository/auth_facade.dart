import 'package:dartz/dartz.dart';
import 'package:gve_launch/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../infrastructure.dart';

/// WE CAN FURTHER ABSTRACT AWAY IMPLEMENTATION INTO LOCAL DATASOURCE AND REMOTE DATASOURCE
/// THIS IS OBVIOUSLY NOT A NECESSITY AS THE SCOPE OF THE PROJECT IS SMALL

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade{

  const AuthFacade({required this.pref});

  final SharedPreferences pref;

  @override
  Future<AppState> getAppState() async{
    final result = pref.getAuthenticationState();
    return result;
  }

  @override
  Future<void> setAppState(AppState appState) async{
    await pref.setAuthenticationState(appState);
  }

  @override
  Future<Either<NetworkFailure, BaseResponse>> verifyAuthCode(String verifyToken, String pin) async{
    // TODO: implement verifyAuthCode
    throw UnimplementedError();
  }

  @override
  Future<Either<NetworkFailure, BaseResponse>> verifyBarCode(String pin) async{
    // TODO: implement verifyBarCode
    throw UnimplementedError();
  }

  @override
  Future<Either<NetworkFailure, BaseResponse>> authenticateMe(String email, String phoneNumber) async{
    // TODO: implement authenticateMe
    throw UnimplementedError();
  }

}