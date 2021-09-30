import 'package:dartz/dartz.dart';
import 'package:gve_opening/src/infrastructure/core/api_endpoints.dart';
import 'package:gve_opening/src/infrastructure/core/core.dart';
import '../../../domain/domain.dart';

import 'package:injectable/injectable.dart';
import '../../infrastructure.dart';

@LazySingleton(as: IAgendaFacade)
class AgendaFacade implements IAgendaFacade{
  const AgendaFacade({required this.networkHelper});
  final NetworkHelper networkHelper;

  @override
  Future<Either<NetworkFailure, AgendaDTO>> fetchAgendaDetail(int agendaID) async{
   try{
      final request = await networkHelper.getRequest(ApiRoutes.agendaRoute+agendaID.toString());
      final baseResponse = BaseResponse.fromJson(request);
      //final convert = AgendaDTO.fromJson(baseResponse.data);
      final pp = (baseResponse.data['speakers'] as List<dynamic>).map((e) => Speaker.fromJson(e as Map<String,dynamic>)).toList();
      final cv = AgendaDTO(speakers: pp, agenda: Agenda(id: baseResponse.data['agenda']['id'], title: baseResponse.data['agenda']['title'], startTimestamp: 0, endTimestamp: 0, speaker: null, description: baseResponse.data['agenda']['description'], youtubeLink: baseResponse.data['agenda']['youtubeLink']));
      return right(cv);
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

  @override
  Future<Either<NetworkFailure, AgendaSpeakerDTO>> fetchAgendaSpeaker(int agendaSpeaker) async{
    try{
      final request = await networkHelper.getRequest(ApiRoutes.speakerRoute+agendaSpeaker.toString());
      final baseResponse = BaseResponse.fromJson(request);
      final convert = AgendaSpeakerDTO(speaker:Speaker.fromJson(baseResponse.data));
      return right(convert);
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException(e.toString()));
    }
  }

}