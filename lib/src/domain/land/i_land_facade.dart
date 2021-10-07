import 'package:dartz/dartz.dart';
import '../domain.dart';

abstract class ILandFacade {
  Future<Either<NetworkFailure, LandDTO>> fetchAllPlots();
}