import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'plot.freezed.dart';
part 'plot.g.dart';

@freezed
class Plot with _$Plot{
  const factory Plot({
    required int id,
    required num size,
    required double price,
    required String unit,
    required String plotId, 
    required String thumbnailUrl,
  }) = _Plot;

  factory Plot.fromJson(Map<String, dynamic> json) => _$PlotFromJson(json);
}