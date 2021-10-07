// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'land_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandDTO _$_$_LandDTOFromJson(Map<String, dynamic> json) {
  return _$_LandDTO(
    plotCategories: (json['plotCategories'] as List<dynamic>)
        .map((e) => PlotCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_LandDTOToJson(_$_LandDTO instance) =>
    <String, dynamic>{
      'plotCategories': instance.plotCategories,
    };
