import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gve_opening/src/domain/domain.dart';

part 'agenda_dto.freezed.dart';
part 'agenda_dto.g.dart';

@freezed
class AgendaDTO with _$AgendaDTO{
  const factory AgendaDTO({
    required List<Speaker> speakers,
    required Agenda agenda
  }) = _AgendaDTO;

  factory AgendaDTO.fromJson(Map<String, dynamic> json) => _$AgendaDTOFromJson(json);
}