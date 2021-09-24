import 'package:dartz/dartz.dart';
import '../domain.dart';

abstract class IMainFacade {
  Future<Either<NetworkFailure, MainDTO>> fetchDashboardInfo();
}