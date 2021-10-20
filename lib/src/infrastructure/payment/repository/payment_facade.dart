import 'package:dartz/dartz.dart';
import 'package:gve_opening/src/infrastructure/core/api_endpoints.dart';
import 'package:gve_opening/src/infrastructure/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../domain/domain.dart';

import 'package:injectable/injectable.dart';
import '../../infrastructure.dart';

@LazySingleton(as: IPaymentFacade)
class PaymentFacade implements IPaymentFacade{

  const PaymentFacade({required this.pref, required this.networkHelper});
  final NetworkHelper networkHelper;
  final SharedPreferences pref;

  @override
  Future<Either<NetworkFailure, PropertyInitDTO>> initializeLandPayment(String plotId) async{
    try{
      final header = {'Authorization': pref.getUserToken() ?? ''};
      final request = await networkHelper.getRequest(ApiRoutes.landRoute+"/$plotId",header);
      final baseResponse = BaseResponse.fromJson(request);
      return right(PropertyInitDTO.fromJson(baseResponse.data));
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

  @override
  Future<Either<NetworkFailure, BaseResponse>> verifyPayment(String referenceId) async{
    try{
      final header = {'Authorization': pref.getUserToken() ?? ''};
      final request = await networkHelper.postRequest(ApiRoutes.paymentVerificationRoute, {"referenceId": referenceId}, header);
      final baseResponse = BaseResponse.fromJson(request);  
      return right(baseResponse);
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

  @override
  Future<Either<NetworkFailure, BaseResponse>> submitOfflinePaymentInfo(Map<String, dynamic> paymentInfo) async{
    try{
      final header = {'Authorization': pref.getUserToken() ?? ''};
      final request = await networkHelper.postRequest(ApiRoutes.offlineSubmitRoute, paymentInfo, header);
      final baseResponse = BaseResponse.fromJson(request);  
      return right(baseResponse);
    }on NetworkFailure catch (e) { 
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

  @override
  Future<Either<NetworkFailure, BaseResponse>> retrievePaymentLogs() async{
   try{
      final header = {'Authorization': pref.getUserToken() ?? ''};
      final request = await networkHelper.getRequest(ApiRoutes.paymentHistoryRoute, header);
      final baseResponse = BaseResponse.fromJson(request);
      return right(baseResponse);
    }on NetworkFailure catch (e) { 
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

}