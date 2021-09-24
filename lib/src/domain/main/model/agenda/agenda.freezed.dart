// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agenda.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Agenda _$AgendaFromJson(Map<String, dynamic> json) {
  return _Agenda.fromJson(json);
}

/// @nodoc
class _$AgendaTearOff {
  const _$AgendaTearOff();

  _Agenda call(
      {required int id,
      required String title,
      required num startTimestamp,
      required num endTimestamp,
      required Speaker? speaker}) {
    return _Agenda(
      id: id,
      title: title,
      startTimestamp: startTimestamp,
      endTimestamp: endTimestamp,
      speaker: speaker,
    );
  }

  Agenda fromJson(Map<String, Object> json) {
    return Agenda.fromJson(json);
  }
}

/// @nodoc
const $Agenda = _$AgendaTearOff();

/// @nodoc
mixin _$Agenda {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  num get startTimestamp => throw _privateConstructorUsedError;
  num get endTimestamp => throw _privateConstructorUsedError;
  Speaker? get speaker => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgendaCopyWith<Agenda> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaCopyWith<$Res> {
  factory $AgendaCopyWith(Agenda value, $Res Function(Agenda) then) =
      _$AgendaCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      num startTimestamp,
      num endTimestamp,
      Speaker? speaker});

  $SpeakerCopyWith<$Res>? get speaker;
}

/// @nodoc
class _$AgendaCopyWithImpl<$Res> implements $AgendaCopyWith<$Res> {
  _$AgendaCopyWithImpl(this._value, this._then);

  final Agenda _value;
  // ignore: unused_field
  final $Res Function(Agenda) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? speaker = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as num,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as num,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker?,
    ));
  }

  @override
  $SpeakerCopyWith<$Res>? get speaker {
    if (_value.speaker == null) {
      return null;
    }

    return $SpeakerCopyWith<$Res>(_value.speaker!, (value) {
      return _then(_value.copyWith(speaker: value));
    });
  }
}

/// @nodoc
abstract class _$AgendaCopyWith<$Res> implements $AgendaCopyWith<$Res> {
  factory _$AgendaCopyWith(_Agenda value, $Res Function(_Agenda) then) =
      __$AgendaCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      num startTimestamp,
      num endTimestamp,
      Speaker? speaker});

  @override
  $SpeakerCopyWith<$Res>? get speaker;
}

/// @nodoc
class __$AgendaCopyWithImpl<$Res> extends _$AgendaCopyWithImpl<$Res>
    implements _$AgendaCopyWith<$Res> {
  __$AgendaCopyWithImpl(_Agenda _value, $Res Function(_Agenda) _then)
      : super(_value, (v) => _then(v as _Agenda));

  @override
  _Agenda get _value => super._value as _Agenda;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? speaker = freezed,
  }) {
    return _then(_Agenda(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as num,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as num,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Agenda with DiagnosticableTreeMixin implements _Agenda {
  const _$_Agenda(
      {required this.id,
      required this.title,
      required this.startTimestamp,
      required this.endTimestamp,
      required this.speaker});

  factory _$_Agenda.fromJson(Map<String, dynamic> json) =>
      _$_$_AgendaFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final num startTimestamp;
  @override
  final num endTimestamp;
  @override
  final Speaker? speaker;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Agenda(id: $id, title: $title, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, speaker: $speaker)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Agenda'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('startTimestamp', startTimestamp))
      ..add(DiagnosticsProperty('endTimestamp', endTimestamp))
      ..add(DiagnosticsProperty('speaker', speaker));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Agenda &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.startTimestamp, startTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.startTimestamp, startTimestamp)) &&
            (identical(other.endTimestamp, endTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.endTimestamp, endTimestamp)) &&
            (identical(other.speaker, speaker) ||
                const DeepCollectionEquality().equals(other.speaker, speaker)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(startTimestamp) ^
      const DeepCollectionEquality().hash(endTimestamp) ^
      const DeepCollectionEquality().hash(speaker);

  @JsonKey(ignore: true)
  @override
  _$AgendaCopyWith<_Agenda> get copyWith =>
      __$AgendaCopyWithImpl<_Agenda>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AgendaToJson(this);
  }
}

abstract class _Agenda implements Agenda {
  const factory _Agenda(
      {required int id,
      required String title,
      required num startTimestamp,
      required num endTimestamp,
      required Speaker? speaker}) = _$_Agenda;

  factory _Agenda.fromJson(Map<String, dynamic> json) = _$_Agenda.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  num get startTimestamp => throw _privateConstructorUsedError;
  @override
  num get endTimestamp => throw _privateConstructorUsedError;
  @override
  Speaker? get speaker => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AgendaCopyWith<_Agenda> get copyWith => throw _privateConstructorUsedError;
}
