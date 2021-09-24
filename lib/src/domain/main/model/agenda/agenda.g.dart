// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Agenda _$_$_AgendaFromJson(Map<String, dynamic> json) {
  return _$_Agenda(
    id: json['id'] as int,
    title: json['title'] as String,
    startTimestamp: json['startTimestamp'] as num,
    endTimestamp: json['endTimestamp'] as num,
    speaker: json['speaker'] == null
        ? null
        : Speaker.fromJson(json['speaker'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AgendaToJson(_$_Agenda instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'startTimestamp': instance.startTimestamp,
      'endTimestamp': instance.endTimestamp,
      'speaker': instance.speaker,
    };
