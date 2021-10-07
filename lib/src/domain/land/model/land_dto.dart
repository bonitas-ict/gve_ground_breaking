import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gve_opening/src/domain/land/land.dart';

part 'land_dto.freezed.dart';
part 'land_dto.g.dart';

@freezed
class LandDTO with _$LandDTO{
  const factory LandDTO({
    required List<PlotCategory> plotCategories
  }) = _LandDTO;

  factory LandDTO.fromJson(Map<String, dynamic> json) => _$LandDTOFromJson(json);
}