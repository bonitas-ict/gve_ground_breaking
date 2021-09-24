import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gve_opening/src/domain/domain.dart';

part 'main_dto.freezed.dart';
part 'main_dto.g.dart';

@freezed
class MainDTO with _$MainDTO{
  const factory MainDTO({
    required num timestamp,
    required List<Agenda> agenda
  }) = _MainDTO;

  factory MainDTO.fromJson(Map<String, dynamic> json) => _$MainDTOFromJson(json);
}