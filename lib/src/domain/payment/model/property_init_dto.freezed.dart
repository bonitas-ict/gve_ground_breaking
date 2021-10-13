// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'property_init_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PropertyInitDTO _$PropertyInitDTOFromJson(Map<String, dynamic> json) {
  return _PropertyInitDTO.fromJson(json);
}

/// @nodoc
class _$PropertyInitDTOTearOff {
  const _$PropertyInitDTOTearOff();

  _PropertyInitDTO call({required String referenceId, required bool isTaken}) {
    return _PropertyInitDTO(
      referenceId: referenceId,
      isTaken: isTaken,
    );
  }

  PropertyInitDTO fromJson(Map<String, Object> json) {
    return PropertyInitDTO.fromJson(json);
  }
}

/// @nodoc
const $PropertyInitDTO = _$PropertyInitDTOTearOff();

/// @nodoc
mixin _$PropertyInitDTO {
  String get referenceId => throw _privateConstructorUsedError;
  bool get isTaken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyInitDTOCopyWith<PropertyInitDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyInitDTOCopyWith<$Res> {
  factory $PropertyInitDTOCopyWith(
          PropertyInitDTO value, $Res Function(PropertyInitDTO) then) =
      _$PropertyInitDTOCopyWithImpl<$Res>;
  $Res call({String referenceId, bool isTaken});
}

/// @nodoc
class _$PropertyInitDTOCopyWithImpl<$Res>
    implements $PropertyInitDTOCopyWith<$Res> {
  _$PropertyInitDTOCopyWithImpl(this._value, this._then);

  final PropertyInitDTO _value;
  // ignore: unused_field
  final $Res Function(PropertyInitDTO) _then;

  @override
  $Res call({
    Object? referenceId = freezed,
    Object? isTaken = freezed,
  }) {
    return _then(_value.copyWith(
      referenceId: referenceId == freezed
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      isTaken: isTaken == freezed
          ? _value.isTaken
          : isTaken // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PropertyInitDTOCopyWith<$Res>
    implements $PropertyInitDTOCopyWith<$Res> {
  factory _$PropertyInitDTOCopyWith(
          _PropertyInitDTO value, $Res Function(_PropertyInitDTO) then) =
      __$PropertyInitDTOCopyWithImpl<$Res>;
  @override
  $Res call({String referenceId, bool isTaken});
}

/// @nodoc
class __$PropertyInitDTOCopyWithImpl<$Res>
    extends _$PropertyInitDTOCopyWithImpl<$Res>
    implements _$PropertyInitDTOCopyWith<$Res> {
  __$PropertyInitDTOCopyWithImpl(
      _PropertyInitDTO _value, $Res Function(_PropertyInitDTO) _then)
      : super(_value, (v) => _then(v as _PropertyInitDTO));

  @override
  _PropertyInitDTO get _value => super._value as _PropertyInitDTO;

  @override
  $Res call({
    Object? referenceId = freezed,
    Object? isTaken = freezed,
  }) {
    return _then(_PropertyInitDTO(
      referenceId: referenceId == freezed
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      isTaken: isTaken == freezed
          ? _value.isTaken
          : isTaken // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PropertyInitDTO implements _PropertyInitDTO {
  const _$_PropertyInitDTO({required this.referenceId, required this.isTaken});

  factory _$_PropertyInitDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertyInitDTOFromJson(json);

  @override
  final String referenceId;
  @override
  final bool isTaken;

  @override
  String toString() {
    return 'PropertyInitDTO(referenceId: $referenceId, isTaken: $isTaken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyInitDTO &&
            (identical(other.referenceId, referenceId) ||
                const DeepCollectionEquality()
                    .equals(other.referenceId, referenceId)) &&
            (identical(other.isTaken, isTaken) ||
                const DeepCollectionEquality().equals(other.isTaken, isTaken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(referenceId) ^
      const DeepCollectionEquality().hash(isTaken);

  @JsonKey(ignore: true)
  @override
  _$PropertyInitDTOCopyWith<_PropertyInitDTO> get copyWith =>
      __$PropertyInitDTOCopyWithImpl<_PropertyInitDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PropertyInitDTOToJson(this);
  }
}

abstract class _PropertyInitDTO implements PropertyInitDTO {
  const factory _PropertyInitDTO(
      {required String referenceId,
      required bool isTaken}) = _$_PropertyInitDTO;

  factory _PropertyInitDTO.fromJson(Map<String, dynamic> json) =
      _$_PropertyInitDTO.fromJson;

  @override
  String get referenceId => throw _privateConstructorUsedError;
  @override
  bool get isTaken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PropertyInitDTOCopyWith<_PropertyInitDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
