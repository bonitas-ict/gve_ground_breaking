// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'speaker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Speaker _$SpeakerFromJson(Map<String, dynamic> json) {
  return _Speaker.fromJson(json);
}

/// @nodoc
class _$SpeakerTearOff {
  const _$SpeakerTearOff();

  _Speaker call({required String name, required String? thumbnailUrl}) {
    return _Speaker(
      name: name,
      thumbnailUrl: thumbnailUrl,
    );
  }

  Speaker fromJson(Map<String, Object> json) {
    return Speaker.fromJson(json);
  }
}

/// @nodoc
const $Speaker = _$SpeakerTearOff();

/// @nodoc
mixin _$Speaker {
  String get name => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeakerCopyWith<Speaker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerCopyWith<$Res> {
  factory $SpeakerCopyWith(Speaker value, $Res Function(Speaker) then) =
      _$SpeakerCopyWithImpl<$Res>;
  $Res call({String name, String? thumbnailUrl});
}

/// @nodoc
class _$SpeakerCopyWithImpl<$Res> implements $SpeakerCopyWith<$Res> {
  _$SpeakerCopyWithImpl(this._value, this._then);

  final Speaker _value;
  // ignore: unused_field
  final $Res Function(Speaker) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SpeakerCopyWith<$Res> implements $SpeakerCopyWith<$Res> {
  factory _$SpeakerCopyWith(_Speaker value, $Res Function(_Speaker) then) =
      __$SpeakerCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? thumbnailUrl});
}

/// @nodoc
class __$SpeakerCopyWithImpl<$Res> extends _$SpeakerCopyWithImpl<$Res>
    implements _$SpeakerCopyWith<$Res> {
  __$SpeakerCopyWithImpl(_Speaker _value, $Res Function(_Speaker) _then)
      : super(_value, (v) => _then(v as _Speaker));

  @override
  _Speaker get _value => super._value as _Speaker;

  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_Speaker(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Speaker with DiagnosticableTreeMixin implements _Speaker {
  const _$_Speaker({required this.name, required this.thumbnailUrl});

  factory _$_Speaker.fromJson(Map<String, dynamic> json) =>
      _$_$_SpeakerFromJson(json);

  @override
  final String name;
  @override
  final String? thumbnailUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Speaker(name: $name, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Speaker'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Speaker &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  _$SpeakerCopyWith<_Speaker> get copyWith =>
      __$SpeakerCopyWithImpl<_Speaker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SpeakerToJson(this);
  }
}

abstract class _Speaker implements Speaker {
  const factory _Speaker(
      {required String name, required String? thumbnailUrl}) = _$_Speaker;

  factory _Speaker.fromJson(Map<String, dynamic> json) = _$_Speaker.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpeakerCopyWith<_Speaker> get copyWith =>
      throw _privateConstructorUsedError;
}
