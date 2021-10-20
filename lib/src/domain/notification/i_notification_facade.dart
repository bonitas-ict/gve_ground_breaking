import 'package:dartz/dartz.dart';
import '../domain.dart';

abstract class INotificationFacade {
  Future<Either<NetworkFailure, BaseResponse>> fetchNotification();
  Future<Either<NetworkFailure, BaseResponse>> fetchUnReadCount();
  Future<Either<NetworkFailure, BaseResponse>> markAsReadt(String id);
}