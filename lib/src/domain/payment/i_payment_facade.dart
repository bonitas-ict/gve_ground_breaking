import 'package:dartz/dartz.dart';
import '../domain.dart';

abstract class IPaymentFacade {
  Future<Either<NetworkFailure, PropertyInitDTO>> initializeLandPayment(String plotId);
  Future<Either<NetworkFailure, BaseResponse>> verifyPayment(String referenceId);
}
