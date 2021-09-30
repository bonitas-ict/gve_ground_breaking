import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'speaker.freezed.dart';
part 'speaker.g.dart';

@freezed
class Speaker with _$Speaker{
  const factory Speaker({
    required String name,
    String? thumbnailUrl,
    String? titles,
    String? bio,
    @Default(-1) int id,
  }) = _Speaker;

  factory Speaker.fromJson(Map<String, dynamic> json) => _$SpeakerFromJson(json);
}