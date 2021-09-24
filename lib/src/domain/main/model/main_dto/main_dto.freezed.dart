// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainDTO _$MainDTOFromJson(Map<String, dynamic> json) {
  return _MainDTO.fromJson(json);
}

/// @nodoc
class _$MainDTOTearOff {
  const _$MainDTOTearOff();

  _MainDTO call({required num timestamp, required List<Agenda> agenda}) {
    return _MainDTO(
      timestamp: timestamp,
      agenda: agenda,
    );
  }

  MainDTO fromJson(Map<String, Object> json) {
    return MainDTO.fromJson(json);
  }
}

/// @nodoc
const $MainDTO = _$MainDTOTearOff();

/// @nodoc
mixin _$MainDTO {
  num get timestamp => throw _privateConstructorUsedError;
  List<Agenda> get agenda => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainDTOCopyWith<MainDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDTOCopyWith<$Res> {
  factory $MainDTOCopyWith(MainDTO value, $Res Function(MainDTO) then) =
      _$MainDTOCopyWithImpl<$Res>;
  $Res call({num timestamp, List<Agenda> agenda});
}

/// @nodoc
class _$MainDTOCopyWithImpl<$Res> implements $MainDTOCopyWith<$Res> {
  _$MainDTOCopyWithImpl(this._value, this._then);

  final MainDTO _value;
  // ignore: unused_field
  final $Res Function(MainDTO) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? agenda = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as num,
      agenda: agenda == freezed
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as List<Agenda>,
    ));
  }
}

/// @nodoc
abstract class _$MainDTOCopyWith<$Res> implements $MainDTOCopyWith<$Res> {
  factory _$MainDTOCopyWith(_MainDTO value, $Res Function(_MainDTO) then) =
      __$MainDTOCopyWithImpl<$Res>;
  @override
  $Res call({num timestamp, List<Agenda> agenda});
}

/// @nodoc
class __$MainDTOCopyWithImpl<$Res> extends _$MainDTOCopyWithImpl<$Res>
    implements _$MainDTOCopyWith<$Res> {
  __$MainDTOCopyWithImpl(_MainDTO _value, $Res Function(_MainDTO) _then)
      : super(_value, (v) => _then(v as _MainDTO));

  @override
  _MainDTO get _value => super._value as _MainDTO;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? agenda = freezed,
  }) {
    return _then(_MainDTO(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as num,
      agenda: agenda == freezed
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as List<Agenda>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainDTO implements _MainDTO {
  const _$_MainDTO({required this.timestamp, required this.agenda});

  factory _$_MainDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_MainDTOFromJson(json);

  @override
  final num timestamp;
  @override
  final List<Agenda> agenda;

  @override
  String toString() {
    return 'MainDTO(timestamp: $timestamp, agenda: $agenda)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainDTO &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.agenda, agenda) ||
                const DeepCollectionEquality().equals(other.agenda, agenda)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(agenda);

  @JsonKey(ignore: true)
  @override
  _$MainDTOCopyWith<_MainDTO> get copyWith =>
      __$MainDTOCopyWithImpl<_MainDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MainDTOToJson(this);
  }
}

abstract class _MainDTO implements MainDTO {
  const factory _MainDTO(
      {required num timestamp, required List<Agenda> agenda}) = _$_MainDTO;

  factory _MainDTO.fromJson(Map<String, dynamic> json) = _$_MainDTO.fromJson;

  @override
  num get timestamp => throw _privateConstructorUsedError;
  @override
  List<Agenda> get agenda => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainDTOCopyWith<_MainDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
