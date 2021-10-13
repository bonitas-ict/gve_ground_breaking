// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plot_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlotCategory _$_$_PlotCategoryFromJson(Map<String, dynamic> json) {
  return _$_PlotCategory(
    categoryName: json['categoryName'] as String,
    description: json['description'] as String,
    Properties: (json['Properties'] as List<dynamic>)
        .map((e) => Plot.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PlotCategoryToJson(_$_PlotCategory instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'description': instance.description,
      'Properties': instance.Properties,
    };
