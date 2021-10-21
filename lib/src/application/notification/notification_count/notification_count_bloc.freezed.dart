// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationCountEventTearOff {
  const _$NotificationCountEventTearOff();

  _LoadNotificationCount loadNotificationCount() {
    return const _LoadNotificationCount();
  }
}

/// @nodoc
const $NotificationCountEvent = _$NotificationCountEventTearOff();

/// @nodoc
mixin _$NotificationCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotificationCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotificationCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotificationCount value)
        loadNotificationCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotificationCount value)? loadNotificationCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCountEventCopyWith<$Res> {
  factory $NotificationCountEventCopyWith(NotificationCountEvent value,
          $Res Function(NotificationCountEvent) then) =
      _$NotificationCountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationCountEventCopyWithImpl<$Res>
    implements $NotificationCountEventCopyWith<$Res> {
  _$NotificationCountEventCopyWithImpl(this._value, this._then);

  final NotificationCountEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationCountEvent) _then;
}

/// @nodoc
abstract class _$LoadNotificationCountCopyWith<$Res> {
  factory _$LoadNotificationCountCopyWith(_LoadNotificationCount value,
          $Res Function(_LoadNotificationCount) then) =
      __$LoadNotificationCountCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadNotificationCountCopyWithImpl<$Res>
    extends _$NotificationCountEventCopyWithImpl<$Res>
    implements _$LoadNotificationCountCopyWith<$Res> {
  __$LoadNotificationCountCopyWithImpl(_LoadNotificationCount _value,
      $Res Function(_LoadNotificationCount) _then)
      : super(_value, (v) => _then(v as _LoadNotificationCount));

  @override
  _LoadNotificationCount get _value => super._value as _LoadNotificationCount;
}

/// @nodoc

class _$_LoadNotificationCount implements _LoadNotificationCount {
  const _$_LoadNotificationCount();

  @override
  String toString() {
    return 'NotificationCountEvent.loadNotificationCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadNotificationCount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotificationCount,
  }) {
    return loadNotificationCount();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotificationCount,
    required TResult orElse(),
  }) {
    if (loadNotificationCount != null) {
      return loadNotificationCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotificationCount value)
        loadNotificationCount,
  }) {
    return loadNotificationCount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotificationCount value)? loadNotificationCount,
    required TResult orElse(),
  }) {
    if (loadNotificationCount != null) {
      return loadNotificationCount(this);
    }
    return orElse();
  }
}

abstract class _LoadNotificationCount implements NotificationCountEvent {
  const factory _LoadNotificationCount() = _$_LoadNotificationCount;
}

/// @nodoc
class _$NotificationCountStateTearOff {
  const _$NotificationCountStateTearOff();

  _Initial initial(num notificationCount) {
    return _Initial(
      notificationCount,
    );
  }

  _LoadInProgress loadInProgress(num notificationCount) {
    return _LoadInProgress(
      notificationCount,
    );
  }

  _LoadSuccess loadSuccess(num notificationCount) {
    return _LoadSuccess(
      notificationCount,
    );
  }

  _LoadFailure loadFailure(
      num notificationCount, NetworkFailure networkFailure) {
    return _LoadFailure(
      notificationCount,
      networkFailure,
    );
  }
}

/// @nodoc
const $NotificationCountState = _$NotificationCountStateTearOff();

/// @nodoc
mixin _$NotificationCountState {
  num get notificationCount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num notificationCount) initial,
    required TResult Function(num notificationCount) loadInProgress,
    required TResult Function(num notificationCount) loadSuccess,
    required TResult Function(
            num notificationCount, NetworkFailure networkFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num notificationCount)? initial,
    TResult Function(num notificationCount)? loadInProgress,
    TResult Function(num notificationCount)? loadSuccess,
    TResult Function(num notificationCount, NetworkFailure networkFailure)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationCountStateCopyWith<NotificationCountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCountStateCopyWith<$Res> {
  factory $NotificationCountStateCopyWith(NotificationCountState value,
          $Res Function(NotificationCountState) then) =
      _$NotificationCountStateCopyWithImpl<$Res>;
  $Res call({num notificationCount});
}

/// @nodoc
class _$NotificationCountStateCopyWithImpl<$Res>
    implements $NotificationCountStateCopyWith<$Res> {
  _$NotificationCountStateCopyWithImpl(this._value, this._then);

  final NotificationCountState _value;
  // ignore: unused_field
  final $Res Function(NotificationCountState) _then;

  @override
  $Res call({
    Object? notificationCount = freezed,
  }) {
    return _then(_value.copyWith(
      notificationCount: notificationCount == freezed
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $NotificationCountStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({num notificationCount});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NotificationCountStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? notificationCount = freezed,
  }) {
    return _then(_Initial(
      notificationCount == freezed
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.notificationCount);

  @override
  final num notificationCount;

  @override
  String toString() {
    return 'NotificationCountState.initial(notificationCount: $notificationCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.notificationCount, notificationCount) ||
                const DeepCollectionEquality()
                    .equals(other.notificationCount, notificationCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationCount);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num notificationCount) initial,
    required TResult Function(num notificationCount) loadInProgress,
    required TResult Function(num notificationCount) loadSuccess,
    required TResult Function(
            num notificationCount, NetworkFailure networkFailure)
        loadFailure,
  }) {
    return initial(notificationCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num notificationCount)? initial,
    TResult Function(num notificationCount)? loadInProgress,
    TResult Function(num notificationCount)? loadSuccess,
    TResult Function(num notificationCount, NetworkFailure networkFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(notificationCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationCountState {
  const factory _Initial(num notificationCount) = _$_Initial;

  @override
  num get notificationCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res>
    implements $NotificationCountStateCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  @override
  $Res call({num notificationCount});
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$NotificationCountStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object? notificationCount = freezed,
  }) {
    return _then(_LoadInProgress(
      notificationCount == freezed
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress(this.notificationCount);

  @override
  final num notificationCount;

  @override
  String toString() {
    return 'NotificationCountState.loadInProgress(notificationCount: $notificationCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInProgress &&
            (identical(other.notificationCount, notificationCount) ||
                const DeepCollectionEquality()
                    .equals(other.notificationCount, notificationCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationCount);

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num notificationCount) initial,
    required TResult Function(num notificationCount) loadInProgress,
    required TResult Function(num notificationCount) loadSuccess,
    required TResult Function(
            num notificationCount, NetworkFailure networkFailure)
        loadFailure,
  }) {
    return loadInProgress(notificationCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num notificationCount)? initial,
    TResult Function(num notificationCount)? loadInProgress,
    TResult Function(num notificationCount)? loadSuccess,
    TResult Function(num notificationCount, NetworkFailure networkFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(notificationCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements NotificationCountState {
  const factory _LoadInProgress(num notificationCount) = _$_LoadInProgress;

  @override
  num get notificationCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res>
    implements $NotificationCountStateCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({num notificationCount});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$NotificationCountStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? notificationCount = freezed,
  }) {
    return _then(_LoadSuccess(
      notificationCount == freezed
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.notificationCount);

  @override
  final num notificationCount;

  @override
  String toString() {
    return 'NotificationCountState.loadSuccess(notificationCount: $notificationCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.notificationCount, notificationCount) ||
                const DeepCollectionEquality()
                    .equals(other.notificationCount, notificationCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationCount);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num notificationCount) initial,
    required TResult Function(num notificationCount) loadInProgress,
    required TResult Function(num notificationCount) loadSuccess,
    required TResult Function(
            num notificationCount, NetworkFailure networkFailure)
        loadFailure,
  }) {
    return loadSuccess(notificationCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num notificationCount)? initial,
    TResult Function(num notificationCount)? loadInProgress,
    TResult Function(num notificationCount)? loadSuccess,
    TResult Function(num notificationCount, NetworkFailure networkFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(notificationCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements NotificationCountState {
  const factory _LoadSuccess(num notificationCount) = _$_LoadSuccess;

  @override
  num get notificationCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res>
    implements $NotificationCountStateCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({num notificationCount, NetworkFailure networkFailure});

  $NetworkFailureCopyWith<$Res> get networkFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$NotificationCountStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? notificationCount = freezed,
    Object? networkFailure = freezed,
  }) {
    return _then(_LoadFailure(
      notificationCount == freezed
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as num,
      networkFailure == freezed
          ? _value.networkFailure
          : networkFailure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
    ));
  }

  @override
  $NetworkFailureCopyWith<$Res> get networkFailure {
    return $NetworkFailureCopyWith<$Res>(_value.networkFailure, (value) {
      return _then(_value.copyWith(networkFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.notificationCount, this.networkFailure);

  @override
  final num notificationCount;
  @override
  final NetworkFailure networkFailure;

  @override
  String toString() {
    return 'NotificationCountState.loadFailure(notificationCount: $notificationCount, networkFailure: $networkFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.notificationCount, notificationCount) ||
                const DeepCollectionEquality()
                    .equals(other.notificationCount, notificationCount)) &&
            (identical(other.networkFailure, networkFailure) ||
                const DeepCollectionEquality()
                    .equals(other.networkFailure, networkFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationCount) ^
      const DeepCollectionEquality().hash(networkFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num notificationCount) initial,
    required TResult Function(num notificationCount) loadInProgress,
    required TResult Function(num notificationCount) loadSuccess,
    required TResult Function(
            num notificationCount, NetworkFailure networkFailure)
        loadFailure,
  }) {
    return loadFailure(notificationCount, networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num notificationCount)? initial,
    TResult Function(num notificationCount)? loadInProgress,
    TResult Function(num notificationCount)? loadSuccess,
    TResult Function(num notificationCount, NetworkFailure networkFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(notificationCount, networkFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements NotificationCountState {
  const factory _LoadFailure(
      num notificationCount, NetworkFailure networkFailure) = _$_LoadFailure;

  @override
  num get notificationCount => throw _privateConstructorUsedError;
  NetworkFailure get networkFailure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
