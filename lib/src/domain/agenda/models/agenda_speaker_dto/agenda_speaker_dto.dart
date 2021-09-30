import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gve_opening/src/domain/domain.dart';

part 'agenda_speaker_dto.freezed.dart';
part 'agenda_speaker_dto.g.dart';

@freezed
class AgendaSpeakerDTO with _$AgendaSpeakerDTO{
  const factory AgendaSpeakerDTO({
    required Speaker speaker,
  }) = _AgendaSpeakerDTO;

  factory AgendaSpeakerDTO.fromJson(Map<String, dynamic> json) => _$AgendaSpeakerDTOFromJson(json);
}