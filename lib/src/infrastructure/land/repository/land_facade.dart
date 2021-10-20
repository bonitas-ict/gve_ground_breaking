import 'package:dartz/dartz.dart';
import 'package:gve_opening/src/infrastructure/core/api_endpoints.dart';
import 'package:gve_opening/src/infrastructure/core/core.dart';
import '../../../domain/domain.dart';

import 'package:injectable/injectable.dart';
import '../../infrastructure.dart';

@LazySingleton(as: ILandFacade)
class LandFacade implements ILandFacade{

  const LandFacade({required this.networkHelper});
  final NetworkHelper networkHelper;

  @override
  Future<Either<NetworkFailure, LandDTO>> fetchAllPlots()async {
    try{
      final request = await networkHelper.getRequest(ApiRoutes.landRoute);
      final baseResponse = BaseResponse.fromJson(request); 
      final pp = (baseResponse.data as List<dynamic>).map((e) => PlotCategory.fromJson(e as Map<String,dynamic>)).toList();
      return right(LandDTO(plotCategories: pp));
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

}