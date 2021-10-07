// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Plot _$_$_PlotFromJson(Map<String, dynamic> json) {
  return _$_Plot(
    id: json['id'] as int,
    size: json['size'] as num,
    price: (json['price'] as num).toDouble(),
    unit: json['unit'] as String,
    plotId: json['plotId'] as String,
    thumbnailUrl: json['thumbnailUrl'] as String,
  );
}

Map<String, dynamic> _$_$_PlotToJson(_$_Plot instance) => <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'price': instance.price,
      'unit': instance.unit,
      'plotId': instance.plotId,
      'thumbnailUrl': instance.thumbnailUrl,
    };
