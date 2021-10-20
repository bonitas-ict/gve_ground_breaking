// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'noti.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationMessage _$NotificationMessageFromJson(Map<String, dynamic> json) {
  return _NotificationMessage.fromJson(json);
}

/// @nodoc
class _$NotificationMessageTearOff {
  const _$NotificationMessageTearOff();

  _NotificationMessage call(
      {required String? title,
      required String? body,
      required int time,
      bool isRead = false}) {
    return _NotificationMessage(
      title: title,
      body: body,
      time: time,
      isRead: isRead,
    );
  }

  NotificationMessage fromJson(Map<String, Object> json) {
    return NotificationMessage.fromJson(json);
  }
}

/// @nodoc
const $NotificationMessage = _$NotificationMessageTearOff();

/// @nodoc
mixin _$NotificationMessage {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationMessageCopyWith<NotificationMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMessageCopyWith<$Res> {
  factory $NotificationMessageCopyWith(
          NotificationMessage value, $Res Function(NotificationMessage) then) =
      _$NotificationMessageCopyWithImpl<$Res>;
  $Res call({String? title, String? body, int time, bool isRead});
}

/// @nodoc
class _$NotificationMessageCopyWithImpl<$Res>
    implements $NotificationMessageCopyWith<$Res> {
  _$NotificationMessageCopyWithImpl(this._value, this._then);

  final NotificationMessage _value;
  // ignore: unused_field
  final $Res Function(NotificationMessage) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? time = freezed,
    Object? isRead = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NotificationMessageCopyWith<$Res>
    implements $NotificationMessageCopyWith<$Res> {
  factory _$NotificationMessageCopyWith(_NotificationMessage value,
          $Res Function(_NotificationMessage) then) =
      __$NotificationMessageCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? body, int time, bool isRead});
}

/// @nodoc
class __$NotificationMessageCopyWithImpl<$Res>
    extends _$NotificationMessageCopyWithImpl<$Res>
    implements _$NotificationMessageCopyWith<$Res> {
  __$NotificationMessageCopyWithImpl(
      _NotificationMessage _value, $Res Function(_NotificationMessage) _then)
      : super(_value, (v) => _then(v as _NotificationMessage));

  @override
  _NotificationMessage get _value => super._value as _NotificationMessage;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? time = freezed,
    Object? isRead = freezed,
  }) {
    return _then(_NotificationMessage(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationMessage implements _NotificationMessage {
  const _$_NotificationMessage(
      {required this.title,
      required this.body,
      required this.time,
      this.isRead = false});

  factory _$_NotificationMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationMessageFromJson(json);

  @override
  final String? title;
  @override
  final String? body;
  @override
  final int time;
  @JsonKey(defaultValue: false)
  @override
  final bool isRead;

  @override
  String toString() {
    return 'NotificationMessage(title: $title, body: $body, time: $time, isRead: $isRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationMessage &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(isRead);

  @JsonKey(ignore: true)
  @override
  _$NotificationMessageCopyWith<_NotificationMessage> get copyWith =>
      __$NotificationMessageCopyWithImpl<_NotificationMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationMessageToJson(this);
  }
}

abstract class _NotificationMessage implements NotificationMessage {
  const factory _NotificationMessage(
      {required String? title,
      required String? body,
      required int time,
      bool isRead}) = _$_NotificationMessage;

  factory _NotificationMessage.fromJson(Map<String, dynamic> json) =
      _$_NotificationMessage.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  int get time => throw _privateConstructorUsedError;
  @override
  bool get isRead => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationMessageCopyWith<_NotificationMessage> get copyWith =>
      throw _privateConstructorUsedError;
}