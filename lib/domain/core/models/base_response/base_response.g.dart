// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResponse _$_$_BaseResponseFromJson(Map<String, dynamic> json) {
  return _$_BaseResponse(
    data: json['data'],
    metadata: json['metadata'],
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_BaseResponseToJson(_$_BaseResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'metadata': instance.metadata,
      'message': instance.message,
    };
