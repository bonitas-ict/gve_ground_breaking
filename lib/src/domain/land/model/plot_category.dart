import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../domain.dart';

part 'plot_category.freezed.dart';
part 'plot_category.g.dart';

@freezed
class PlotCategory with _$PlotCategory{
  const factory PlotCategory({
    //@Default(-1) int id,
    required String categoryName,
    required String description,
    required List<Plot> plots,
  }) = _PlotCategory;

  factory PlotCategory.fromJson(Map<String, dynamic> json) => _$PlotCategoryFromJson(json);
}