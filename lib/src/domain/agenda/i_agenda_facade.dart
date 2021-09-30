import 'package:dartz/dartz.dart';
import '../domain.dart';

abstract class IAgendaFacade {
  Future<Either<NetworkFailure, AgendaDTO>> fetchAgendaDetail(int agendaID);
  Future<Either<NetworkFailure, AgendaSpeakerDTO>> fetchAgendaSpeaker(int agendaSpeaker);
}