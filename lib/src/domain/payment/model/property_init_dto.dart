import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_init_dto.freezed.dart';
part 'property_init_dto.g.dart';

@freezed
class PropertyInitDTO with _$PropertyInitDTO{
  const factory PropertyInitDTO({
    required String referenceId,
    required bool? isTaken,
  }) = _PropertyInitDTO;

  factory PropertyInitDTO.fromJson(Map<String, dynamic> json) => _$PropertyInitDTOFromJson(json);
}