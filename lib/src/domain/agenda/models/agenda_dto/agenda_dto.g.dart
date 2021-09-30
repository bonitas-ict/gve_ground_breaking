// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AgendaDTO _$_$_AgendaDTOFromJson(Map<String, dynamic> json) {
  return _$_AgendaDTO(
    speakers: (json['speakers'] as List<dynamic>)
        .map((e) => Speaker.fromJson(e as Map<String, dynamic>))
        .toList(),
    agenda: Agenda.fromJson(json['agenda'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AgendaDTOToJson(_$_AgendaDTO instance) =>
    <String, dynamic>{
      'speakers': instance.speakers,
      'agenda': instance.agenda,
    };
