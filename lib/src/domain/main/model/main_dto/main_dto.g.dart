// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainDTO _$_$_MainDTOFromJson(Map<String, dynamic> json) {
  return _$_MainDTO(
    timestamp: json['timestamp'] as num,
    agenda: (json['agenda'] as List<dynamic>)
        .map((e) => Agenda.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MainDTOToJson(_$_MainDTO instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'agenda': instance.agenda,
    };
