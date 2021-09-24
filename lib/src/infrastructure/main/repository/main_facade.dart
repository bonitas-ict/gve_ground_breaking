import 'package:dartz/dartz.dart';
import 'package:gve_opening/src/domain/main/i_main_facade.dart';
import 'package:gve_opening/src/infrastructure/core/api_endpoints.dart';
import 'package:gve_opening/src/infrastructure/core/core.dart';
import '../../../domain/domain.dart';

import 'package:injectable/injectable.dart';
import '../../infrastructure.dart';

@LazySingleton(as: IMainFacade)
class MainFacade implements IMainFacade{

  const MainFacade({required this.networkHelper});

  final NetworkHelper networkHelper;

  @override
  Future<Either<NetworkFailure, MainDTO>> fetchDashboardInfo() async{
    try{
      final request = await networkHelper.getRequest(ApiRoutes.dashboardRoute);
      final baseResponse = BaseResponse.fromJson(request);
      return right(MainDTO.fromJson(baseResponse.data));
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

}