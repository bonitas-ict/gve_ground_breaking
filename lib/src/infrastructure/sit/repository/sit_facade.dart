import 'package:dartz/dartz.dart';
import 'package:gve_opening/src/infrastructure/core/api_endpoints.dart';
import 'package:gve_opening/src/infrastructure/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../domain/domain.dart';

import 'package:injectable/injectable.dart';
import '../../infrastructure.dart';

@LazySingleton(as: ISitFacade)
class SitFacade implements ISitFacade{

  const SitFacade({required this.pref, required this.networkHelper});
  final NetworkHelper networkHelper;
  final SharedPreferences pref;

  @override
  Future<Either<NetworkFailure, BaseResponse>> initializeSit() async{
    try{
      final header = {'Authorization': pref.getUserToken() ?? ''}; 
      final request = await networkHelper.getRequest(ApiRoutes.sitRoute,header);
      final baseResponse = BaseResponse.fromJson(request);
      return right(baseResponse);
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

}