import 'package:dartz/dartz.dart';
import '../domain.dart';

abstract class ISitFacade {
  Future<Either<NetworkFailure, BaseResponse>> initializeSit();
}
