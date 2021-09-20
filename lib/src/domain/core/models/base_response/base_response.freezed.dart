// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return _BaseResponse.fromJson(json);
}

/// @nodoc
class _$BaseResponseTearOff {
  const _$BaseResponseTearOff();

  _BaseResponse call(
      {required dynamic data,
      dynamic metadata = null,
      String? message,
      String? token}) {
    return _BaseResponse(
      data: data,
      metadata: metadata,
      message: message,
      token: token,
    );
  }

  BaseResponse fromJson(Map<String, Object> json) {
    return BaseResponse.fromJson(json);
  }
}

/// @nodoc
const $BaseResponse = _$BaseResponseTearOff();

/// @nodoc
mixin _$BaseResponse {
  dynamic get data => throw _privateConstructorUsedError;
  dynamic get metadata => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponseCopyWith<BaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCopyWith<$Res> {
  factory $BaseResponseCopyWith(
          BaseResponse value, $Res Function(BaseResponse) then) =
      _$BaseResponseCopyWithImpl<$Res>;
  $Res call({dynamic data, dynamic metadata, String? message, String? token});
}

/// @nodoc
class _$BaseResponseCopyWithImpl<$Res> implements $BaseResponseCopyWith<$Res> {
  _$BaseResponseCopyWithImpl(this._value, this._then);

  final BaseResponse _value;
  // ignore: unused_field
  final $Res Function(BaseResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
    Object? message = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BaseResponseCopyWith<$Res>
    implements $BaseResponseCopyWith<$Res> {
  factory _$BaseResponseCopyWith(
          _BaseResponse value, $Res Function(_BaseResponse) then) =
      __$BaseResponseCopyWithImpl<$Res>;
  @override
  $Res call({dynamic data, dynamic metadata, String? message, String? token});
}

/// @nodoc
class __$BaseResponseCopyWithImpl<$Res> extends _$BaseResponseCopyWithImpl<$Res>
    implements _$BaseResponseCopyWith<$Res> {
  __$BaseResponseCopyWithImpl(
      _BaseResponse _value, $Res Function(_BaseResponse) _then)
      : super(_value, (v) => _then(v as _BaseResponse));

  @override
  _BaseResponse get _value => super._value as _BaseResponse;

  @override
  $Res call({
    Object? data = freezed,
    Object? metadata = freezed,
    Object? message = freezed,
    Object? token = freezed,
  }) {
    return _then(_BaseResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseResponse implements _BaseResponse {
  const _$_BaseResponse(
      {required this.data, this.metadata = null, this.message, this.token});

  factory _$_BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_BaseResponseFromJson(json);

  @override
  final dynamic data;
  @JsonKey(defaultValue: null)
  @override
  final dynamic metadata;
  @override
  final String? message;
  @override
  final String? token;

  @override
  String toString() {
    return 'BaseResponse(data: $data, metadata: $metadata, message: $message, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$BaseResponseCopyWith<_BaseResponse> get copyWith =>
      __$BaseResponseCopyWithImpl<_BaseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BaseResponseToJson(this);
  }
}

abstract class _BaseResponse implements BaseResponse {
  const factory _BaseResponse(
      {required dynamic data,
      dynamic metadata,
      String? message,
      String? token}) = _$_BaseResponse;

  factory _BaseResponse.fromJson(Map<String, dynamic> json) =
      _$_BaseResponse.fromJson;

  @override
  dynamic get data => throw _privateConstructorUsedError;
  @override
  dynamic get metadata => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BaseResponseCopyWith<_BaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
