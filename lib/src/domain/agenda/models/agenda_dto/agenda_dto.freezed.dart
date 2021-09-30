// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agenda_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgendaDTO _$AgendaDTOFromJson(Map<String, dynamic> json) {
  return _AgendaDTO.fromJson(json);
}

/// @nodoc
class _$AgendaDTOTearOff {
  const _$AgendaDTOTearOff();

  _AgendaDTO call({required List<Speaker> speakers, required Agenda agenda}) {
    return _AgendaDTO(
      speakers: speakers,
      agenda: agenda,
    );
  }

  AgendaDTO fromJson(Map<String, Object> json) {
    return AgendaDTO.fromJson(json);
  }
}

/// @nodoc
const $AgendaDTO = _$AgendaDTOTearOff();

/// @nodoc
mixin _$AgendaDTO {
  List<Speaker> get speakers => throw _privateConstructorUsedError;
  Agenda get agenda => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaDTOCopyWith<AgendaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaDTOCopyWith<$Res> {
  factory $AgendaDTOCopyWith(AgendaDTO value, $Res Function(AgendaDTO) then) =
      _$AgendaDTOCopyWithImpl<$Res>;
  $Res call({List<Speaker> speakers, Agenda agenda});

  $AgendaCopyWith<$Res> get agenda;
}

/// @nodoc
class _$AgendaDTOCopyWithImpl<$Res> implements $AgendaDTOCopyWith<$Res> {
  _$AgendaDTOCopyWithImpl(this._value, this._then);

  final AgendaDTO _value;
  // ignore: unused_field
  final $Res Function(AgendaDTO) _then;

  @override
  $Res call({
    Object? speakers = freezed,
    Object? agenda = freezed,
  }) {
    return _then(_value.copyWith(
      speakers: speakers == freezed
          ? _value.speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<Speaker>,
      agenda: agenda == freezed
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as Agenda,
    ));
  }

  @override
  $AgendaCopyWith<$Res> get agenda {
    return $AgendaCopyWith<$Res>(_value.agenda, (value) {
      return _then(_value.copyWith(agenda: value));
    });
  }
}

/// @nodoc
abstract class _$AgendaDTOCopyWith<$Res> implements $AgendaDTOCopyWith<$Res> {
  factory _$AgendaDTOCopyWith(
          _AgendaDTO value, $Res Function(_AgendaDTO) then) =
      __$AgendaDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<Speaker> speakers, Agenda agenda});

  @override
  $AgendaCopyWith<$Res> get agenda;
}

/// @nodoc
class __$AgendaDTOCopyWithImpl<$Res> extends _$AgendaDTOCopyWithImpl<$Res>
    implements _$AgendaDTOCopyWith<$Res> {
  __$AgendaDTOCopyWithImpl(_AgendaDTO _value, $Res Function(_AgendaDTO) _then)
      : super(_value, (v) => _then(v as _AgendaDTO));

  @override
  _AgendaDTO get _value => super._value as _AgendaDTO;

  @override
  $Res call({
    Object? speakers = freezed,
    Object? agenda = freezed,
  }) {
    return _then(_AgendaDTO(
      speakers: speakers == freezed
          ? _value.speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<Speaker>,
      agenda: agenda == freezed
          ? _value.agenda
          : agenda // ignore: cast_nullable_to_non_nullable
              as Agenda,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgendaDTO implements _AgendaDTO {
  const _$_AgendaDTO({required this.speakers, required this.agenda});

  factory _$_AgendaDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AgendaDTOFromJson(json);

  @override
  final List<Speaker> speakers;
  @override
  final Agenda agenda;

  @override
  String toString() {
    return 'AgendaDTO(speakers: $speakers, agenda: $agenda)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AgendaDTO &&
            (identical(other.speakers, speakers) ||
                const DeepCollectionEquality()
                    .equals(other.speakers, speakers)) &&
            (identical(other.agenda, agenda) ||
                const DeepCollectionEquality().equals(other.agenda, agenda)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(speakers) ^
      const DeepCollectionEquality().hash(agenda);

  @JsonKey(ignore: true)
  @override
  _$AgendaDTOCopyWith<_AgendaDTO> get copyWith =>
      __$AgendaDTOCopyWithImpl<_AgendaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AgendaDTOToJson(this);
  }
}

abstract class _AgendaDTO implements AgendaDTO {
  const factory _AgendaDTO(
      {required List<Speaker> speakers, required Agenda agenda}) = _$_AgendaDTO;

  factory _AgendaDTO.fromJson(Map<String, dynamic> json) =
      _$_AgendaDTO.fromJson;

  @override
  List<Speaker> get speakers => throw _privateConstructorUsedError;
  @override
  Agenda get agenda => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AgendaDTOCopyWith<_AgendaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
