// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'land_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LandDTO _$LandDTOFromJson(Map<String, dynamic> json) {
  return _LandDTO.fromJson(json);
}

/// @nodoc
class _$LandDTOTearOff {
  const _$LandDTOTearOff();

  _LandDTO call({required List<PlotCategory> plotCategories}) {
    return _LandDTO(
      plotCategories: plotCategories,
    );
  }

  LandDTO fromJson(Map<String, Object> json) {
    return LandDTO.fromJson(json);
  }
}

/// @nodoc
const $LandDTO = _$LandDTOTearOff();

/// @nodoc
mixin _$LandDTO {
  List<PlotCategory> get plotCategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandDTOCopyWith<LandDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandDTOCopyWith<$Res> {
  factory $LandDTOCopyWith(LandDTO value, $Res Function(LandDTO) then) =
      _$LandDTOCopyWithImpl<$Res>;
  $Res call({List<PlotCategory> plotCategories});
}

/// @nodoc
class _$LandDTOCopyWithImpl<$Res> implements $LandDTOCopyWith<$Res> {
  _$LandDTOCopyWithImpl(this._value, this._then);

  final LandDTO _value;
  // ignore: unused_field
  final $Res Function(LandDTO) _then;

  @override
  $Res call({
    Object? plotCategories = freezed,
  }) {
    return _then(_value.copyWith(
      plotCategories: plotCategories == freezed
          ? _value.plotCategories
          : plotCategories // ignore: cast_nullable_to_non_nullable
              as List<PlotCategory>,
    ));
  }
}

/// @nodoc
abstract class _$LandDTOCopyWith<$Res> implements $LandDTOCopyWith<$Res> {
  factory _$LandDTOCopyWith(_LandDTO value, $Res Function(_LandDTO) then) =
      __$LandDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<PlotCategory> plotCategories});
}

/// @nodoc
class __$LandDTOCopyWithImpl<$Res> extends _$LandDTOCopyWithImpl<$Res>
    implements _$LandDTOCopyWith<$Res> {
  __$LandDTOCopyWithImpl(_LandDTO _value, $Res Function(_LandDTO) _then)
      : super(_value, (v) => _then(v as _LandDTO));

  @override
  _LandDTO get _value => super._value as _LandDTO;

  @override
  $Res call({
    Object? plotCategories = freezed,
  }) {
    return _then(_LandDTO(
      plotCategories: plotCategories == freezed
          ? _value.plotCategories
          : plotCategories // ignore: cast_nullable_to_non_nullable
              as List<PlotCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LandDTO implements _LandDTO {
  const _$_LandDTO({required this.plotCategories});

  factory _$_LandDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_LandDTOFromJson(json);

  @override
  final List<PlotCategory> plotCategories;

  @override
  String toString() {
    return 'LandDTO(plotCategories: $plotCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandDTO &&
            (identical(other.plotCategories, plotCategories) ||
                const DeepCollectionEquality()
                    .equals(other.plotCategories, plotCategories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(plotCategories);

  @JsonKey(ignore: true)
  @override
  _$LandDTOCopyWith<_LandDTO> get copyWith =>
      __$LandDTOCopyWithImpl<_LandDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandDTOToJson(this);
  }
}

abstract class _LandDTO implements LandDTO {
  const factory _LandDTO({required List<PlotCategory> plotCategories}) =
      _$_LandDTO;

  factory _LandDTO.fromJson(Map<String, dynamic> json) = _$_LandDTO.fromJson;

  @override
  List<PlotCategory> get plotCategories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LandDTOCopyWith<_LandDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
