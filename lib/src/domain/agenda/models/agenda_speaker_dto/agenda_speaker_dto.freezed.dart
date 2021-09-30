// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agenda_speaker_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgendaSpeakerDTO _$AgendaSpeakerDTOFromJson(Map<String, dynamic> json) {
  return _AgendaSpeakerDTO.fromJson(json);
}

/// @nodoc
class _$AgendaSpeakerDTOTearOff {
  const _$AgendaSpeakerDTOTearOff();

  _AgendaSpeakerDTO call({required Speaker speaker}) {
    return _AgendaSpeakerDTO(
      speaker: speaker,
    );
  }

  AgendaSpeakerDTO fromJson(Map<String, Object> json) {
    return AgendaSpeakerDTO.fromJson(json);
  }
}

/// @nodoc
const $AgendaSpeakerDTO = _$AgendaSpeakerDTOTearOff();

/// @nodoc
mixin _$AgendaSpeakerDTO {
  Speaker get speaker => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaSpeakerDTOCopyWith<AgendaSpeakerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaSpeakerDTOCopyWith<$Res> {
  factory $AgendaSpeakerDTOCopyWith(
          AgendaSpeakerDTO value, $Res Function(AgendaSpeakerDTO) then) =
      _$AgendaSpeakerDTOCopyWithImpl<$Res>;
  $Res call({Speaker speaker});

  $SpeakerCopyWith<$Res> get speaker;
}

/// @nodoc
class _$AgendaSpeakerDTOCopyWithImpl<$Res>
    implements $AgendaSpeakerDTOCopyWith<$Res> {
  _$AgendaSpeakerDTOCopyWithImpl(this._value, this._then);

  final AgendaSpeakerDTO _value;
  // ignore: unused_field
  final $Res Function(AgendaSpeakerDTO) _then;

  @override
  $Res call({
    Object? speaker = freezed,
  }) {
    return _then(_value.copyWith(
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker,
    ));
  }

  @override
  $SpeakerCopyWith<$Res> get speaker {
    return $SpeakerCopyWith<$Res>(_value.speaker, (value) {
      return _then(_value.copyWith(speaker: value));
    });
  }
}

/// @nodoc
abstract class _$AgendaSpeakerDTOCopyWith<$Res>
    implements $AgendaSpeakerDTOCopyWith<$Res> {
  factory _$AgendaSpeakerDTOCopyWith(
          _AgendaSpeakerDTO value, $Res Function(_AgendaSpeakerDTO) then) =
      __$AgendaSpeakerDTOCopyWithImpl<$Res>;
  @override
  $Res call({Speaker speaker});

  @override
  $SpeakerCopyWith<$Res> get speaker;
}

/// @nodoc
class __$AgendaSpeakerDTOCopyWithImpl<$Res>
    extends _$AgendaSpeakerDTOCopyWithImpl<$Res>
    implements _$AgendaSpeakerDTOCopyWith<$Res> {
  __$AgendaSpeakerDTOCopyWithImpl(
      _AgendaSpeakerDTO _value, $Res Function(_AgendaSpeakerDTO) _then)
      : super(_value, (v) => _then(v as _AgendaSpeakerDTO));

  @override
  _AgendaSpeakerDTO get _value => super._value as _AgendaSpeakerDTO;

  @override
  $Res call({
    Object? speaker = freezed,
  }) {
    return _then(_AgendaSpeakerDTO(
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgendaSpeakerDTO implements _AgendaSpeakerDTO {
  const _$_AgendaSpeakerDTO({required this.speaker});

  factory _$_AgendaSpeakerDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AgendaSpeakerDTOFromJson(json);

  @override
  final Speaker speaker;

  @override
  String toString() {
    return 'AgendaSpeakerDTO(speaker: $speaker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AgendaSpeakerDTO &&
            (identical(other.speaker, speaker) ||
                const DeepCollectionEquality().equals(other.speaker, speaker)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speaker);

  @JsonKey(ignore: true)
  @override
  _$AgendaSpeakerDTOCopyWith<_AgendaSpeakerDTO> get copyWith =>
      __$AgendaSpeakerDTOCopyWithImpl<_AgendaSpeakerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AgendaSpeakerDTOToJson(this);
  }
}

abstract class _AgendaSpeakerDTO implements AgendaSpeakerDTO {
  const factory _AgendaSpeakerDTO({required Speaker speaker}) =
      _$_AgendaSpeakerDTO;

  factory _AgendaSpeakerDTO.fromJson(Map<String, dynamic> json) =
      _$_AgendaSpeakerDTO.fromJson;

  @override
  Speaker get speaker => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AgendaSpeakerDTOCopyWith<_AgendaSpeakerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
