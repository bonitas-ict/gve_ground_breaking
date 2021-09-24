import 'package:dartz/dartz.dart';
import 'package:gve_opening/src/infrastructure/core/core.dart';
import '../../../domain/domain.dart';

import 'package:injectable/injectable.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../infrastructure.dart';

/// WE CAN FURTHER ABSTRACT AWAY IMPLEMENTATION INTO LOCAL DATASOURCE AND REMOTE DATASOURCE
/// THIS IS OBVIOUSLY NOT A NECESSITY AS THE SCOPE OF THE PROJECT IS SMALL

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade{

  const AuthFacade({required this.pref, required this.networkHelper});

  final SharedPreferences pref;
  final NetworkHelper networkHelper;

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
    throw UnimplementedError();
  }

  @override
  Future<Either<NetworkFailure, BaseResponse>> verifyBarCode(String pin) async{
    try{
      final deviceId = await PlatformDeviceId.getDeviceId;
      final requestBody = {
        "pin" : pin,
        "deviceId": deviceId
      };
      final Map<String, dynamic> response = await networkHelper.postRequest(ApiRoutes.pinCheckRoute, requestBody);
      final baseResponse = BaseResponse.fromJson(response);
      pref.storeUserToken(baseResponse.token ?? '');
      pref.setUserPin(pin);
      pref.setUserName(baseResponse.data as String);
      return right(baseResponse);
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

  @override
  Future<Either<NetworkFailure, BaseResponse>> authenticateMe(String email, String phoneNumber) async{
    final body = {
      "email": email,
      "phoneNumber": phoneNumber
    };
    final header = {'Authorization': pref.getUserToken() ?? ''};
    return await generalRequestWrapper(networkHelper.putRequest(ApiRoutes.userRoute, body, header));
  }

  Future<Either<NetworkFailure, BaseResponse>> generalRequestWrapper(Future<dynamic> request) async{
    try{
      final Map<String, dynamic> response = await request;
      final baseResponse = BaseResponse.fromJson(response);
      return right(baseResponse);
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

  @override
  Future<Either<NetworkFailure, BaseResponse>> createAccount(String email, String phoneNumber, String name) async{
    try{
      final requestBody = {
        "email" : email,
        "phoneNumber": phoneNumber,
        "name": name,
      };
      final Map<String, dynamic> response = await networkHelper.postRequest(ApiRoutes.userRoute, requestBody);
      final baseResponse = BaseResponse.fromJson(response);
      pref.storeUserToken(baseResponse.token ?? '');
      //pref.setUserPin(pin);
      pref.setUserName(name);
      return right(baseResponse);
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

}