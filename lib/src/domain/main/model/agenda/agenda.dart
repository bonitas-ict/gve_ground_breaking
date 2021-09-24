import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:gve_opening/src/domain/domain.dart';

part 'agenda.freezed.dart';
part 'agenda.g.dart';

@freezed
class Agenda with _$Agenda{
  const factory Agenda({
    required int id,
    required String title,
    required num startTimestamp,
    required num endTimestamp,
    required Speaker? speaker
  }) = _Agenda;

  factory Agenda.fromJson(Map<String, dynamic> json) => _$AgendaFromJson(json);
}