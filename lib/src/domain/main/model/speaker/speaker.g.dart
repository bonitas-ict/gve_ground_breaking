// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speaker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Speaker _$_$_SpeakerFromJson(Map<String, dynamic> json) {
  return _$_Speaker(
    name: json['name'] as String,
    thumbnailUrl: json['thumbnailUrl'] as String?,
    titles: json['titles'] as String?,
    bio: json['bio'] as String?,
    id: json['id'] as int? ?? -1,
  );
}

Map<String, dynamic> _$_$_SpeakerToJson(_$_Speaker instance) =>
    <String, dynamic>{
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl,
      'titles': instance.titles,
      'bio': instance.bio,
      'id': instance.id,
    };
