// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agenda_speaker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AgendaSpeakerEventTearOff {
  const _$AgendaSpeakerEventTearOff();

  _GetAgendaSpeakerDetails getAgendaSpeakerDetails(int agendaSpeakeID) {
    return _GetAgendaSpeakerDetails(
      agendaSpeakeID,
    );
  }
}

/// @nodoc
const $AgendaSpeakerEvent = _$AgendaSpeakerEventTearOff();

/// @nodoc
mixin _$AgendaSpeakerEvent {
  int get agendaSpeakeID => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int agendaSpeakeID) getAgendaSpeakerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int agendaSpeakeID)? getAgendaSpeakerDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAgendaSpeakerDetails value)
        getAgendaSpeakerDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAgendaSpeakerDetails value)? getAgendaSpeakerDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgendaSpeakerEventCopyWith<AgendaSpeakerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaSpeakerEventCopyWith<$Res> {
  factory $AgendaSpeakerEventCopyWith(
          AgendaSpeakerEvent value, $Res Function(AgendaSpeakerEvent) then) =
      _$AgendaSpeakerEventCopyWithImpl<$Res>;
  $Res call({int agendaSpeakeID});
}

/// @nodoc
class _$AgendaSpeakerEventCopyWithImpl<$Res>
    implements $AgendaSpeakerEventCopyWith<$Res> {
  _$AgendaSpeakerEventCopyWithImpl(this._value, this._then);

  final AgendaSpeakerEvent _value;
  // ignore: unused_field
  final $Res Function(AgendaSpeakerEvent) _then;

  @override
  $Res call({
    Object? agendaSpeakeID = freezed,
  }) {
    return _then(_value.copyWith(
      agendaSpeakeID: agendaSpeakeID == freezed
          ? _value.agendaSpeakeID
          : agendaSpeakeID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GetAgendaSpeakerDetailsCopyWith<$Res>
    implements $AgendaSpeakerEventCopyWith<$Res> {
  factory _$GetAgendaSpeakerDetailsCopyWith(_GetAgendaSpeakerDetails value,
          $Res Function(_GetAgendaSpeakerDetails) then) =
      __$GetAgendaSpeakerDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int agendaSpeakeID});
}

/// @nodoc
class __$GetAgendaSpeakerDetailsCopyWithImpl<$Res>
    extends _$AgendaSpeakerEventCopyWithImpl<$Res>
    implements _$GetAgendaSpeakerDetailsCopyWith<$Res> {
  __$GetAgendaSpeakerDetailsCopyWithImpl(_GetAgendaSpeakerDetails _value,
      $Res Function(_GetAgendaSpeakerDetails) _then)
      : super(_value, (v) => _then(v as _GetAgendaSpeakerDetails));

  @override
  _GetAgendaSpeakerDetails get _value =>
      super._value as _GetAgendaSpeakerDetails;

  @override
  $Res call({
    Object? agendaSpeakeID = freezed,
  }) {
    return _then(_GetAgendaSpeakerDetails(
      agendaSpeakeID == freezed
          ? _value.agendaSpeakeID
          : agendaSpeakeID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetAgendaSpeakerDetails implements _GetAgendaSpeakerDetails {
  const _$_GetAgendaSpeakerDetails(this.agendaSpeakeID);

  @override
  final int agendaSpeakeID;

  @override
  String toString() {
    return 'AgendaSpeakerEvent.getAgendaSpeakerDetails(agendaSpeakeID: $agendaSpeakeID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAgendaSpeakerDetails &&
            (identical(other.agendaSpeakeID, agendaSpeakeID) ||
                const DeepCollectionEquality()
                    .equals(other.agendaSpeakeID, agendaSpeakeID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(agendaSpeakeID);

  @JsonKey(ignore: true)
  @override
  _$GetAgendaSpeakerDetailsCopyWith<_GetAgendaSpeakerDetails> get copyWith =>
      __$GetAgendaSpeakerDetailsCopyWithImpl<_GetAgendaSpeakerDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int agendaSpeakeID) getAgendaSpeakerDetails,
  }) {
    return getAgendaSpeakerDetails(agendaSpeakeID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int agendaSpeakeID)? getAgendaSpeakerDetails,
    required TResult orElse(),
  }) {
    if (getAgendaSpeakerDetails != null) {
      return getAgendaSpeakerDetails(agendaSpeakeID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAgendaSpeakerDetails value)
        getAgendaSpeakerDetails,
  }) {
    return getAgendaSpeakerDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAgendaSpeakerDetails value)? getAgendaSpeakerDetails,
    required TResult orElse(),
  }) {
    if (getAgendaSpeakerDetails != null) {
      return getAgendaSpeakerDetails(this);
    }
    return orElse();
  }
}

abstract class _GetAgendaSpeakerDetails implements AgendaSpeakerEvent {
  const factory _GetAgendaSpeakerDetails(int agendaSpeakeID) =
      _$_GetAgendaSpeakerDetails;

  @override
  int get agendaSpeakeID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetAgendaSpeakerDetailsCopyWith<_GetAgendaSpeakerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AgendaSpeakerStateTearOff {
  const _$AgendaSpeakerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(Speaker speaker) {
    return _LoadSuccess(
      speaker,
    );
  }

  _LoadFailure loadFailure(NetworkFailure networkFailure, int agendaSpeakerId) {
    return _LoadFailure(
      networkFailure,
      agendaSpeakerId,
    );
  }
}

/// @nodoc
const $AgendaSpeakerState = _$AgendaSpeakerStateTearOff();

/// @nodoc
mixin _$AgendaSpeakerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Speaker speaker) loadSuccess,
    required TResult Function(
            NetworkFailure networkFailure, int agendaSpeakerId)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Speaker speaker)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaSpeakerId)?
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
}

/// @nodoc
abstract class $AgendaSpeakerStateCopyWith<$Res> {
  factory $AgendaSpeakerStateCopyWith(
          AgendaSpeakerState value, $Res Function(AgendaSpeakerState) then) =
      _$AgendaSpeakerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgendaSpeakerStateCopyWithImpl<$Res>
    implements $AgendaSpeakerStateCopyWith<$Res> {
  _$AgendaSpeakerStateCopyWithImpl(this._value, this._then);

  final AgendaSpeakerState _value;
  // ignore: unused_field
  final $Res Function(AgendaSpeakerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AgendaSpeakerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AgendaSpeakerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Speaker speaker) loadSuccess,
    required TResult Function(
            NetworkFailure networkFailure, int agendaSpeakerId)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Speaker speaker)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaSpeakerId)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
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

abstract class _Initial implements AgendaSpeakerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$AgendaSpeakerStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'AgendaSpeakerState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Speaker speaker) loadSuccess,
    required TResult Function(
            NetworkFailure networkFailure, int agendaSpeakerId)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Speaker speaker)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaSpeakerId)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
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

abstract class _LoadInProgress implements AgendaSpeakerState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Speaker speaker});

  $SpeakerCopyWith<$Res> get speaker;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$AgendaSpeakerStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? speaker = freezed,
  }) {
    return _then(_LoadSuccess(
      speaker == freezed
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

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.speaker);

  @override
  final Speaker speaker;

  @override
  String toString() {
    return 'AgendaSpeakerState.loadSuccess(speaker: $speaker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.speaker, speaker) ||
                const DeepCollectionEquality().equals(other.speaker, speaker)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speaker);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Speaker speaker) loadSuccess,
    required TResult Function(
            NetworkFailure networkFailure, int agendaSpeakerId)
        loadFailure,
  }) {
    return loadSuccess(speaker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Speaker speaker)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaSpeakerId)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(speaker);
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

abstract class _LoadSuccess implements AgendaSpeakerState {
  const factory _LoadSuccess(Speaker speaker) = _$_LoadSuccess;

  Speaker get speaker => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({NetworkFailure networkFailure, int agendaSpeakerId});

  $NetworkFailureCopyWith<$Res> get networkFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$AgendaSpeakerStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? networkFailure = freezed,
    Object? agendaSpeakerId = freezed,
  }) {
    return _then(_LoadFailure(
      networkFailure == freezed
          ? _value.networkFailure
          : networkFailure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
      agendaSpeakerId == freezed
          ? _value.agendaSpeakerId
          : agendaSpeakerId // ignore: cast_nullable_to_non_nullable
              as int,
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
  const _$_LoadFailure(this.networkFailure, this.agendaSpeakerId);

  @override
  final NetworkFailure networkFailure;
  @override
  final int agendaSpeakerId;

  @override
  String toString() {
    return 'AgendaSpeakerState.loadFailure(networkFailure: $networkFailure, agendaSpeakerId: $agendaSpeakerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.networkFailure, networkFailure) ||
                const DeepCollectionEquality()
                    .equals(other.networkFailure, networkFailure)) &&
            (identical(other.agendaSpeakerId, agendaSpeakerId) ||
                const DeepCollectionEquality()
                    .equals(other.agendaSpeakerId, agendaSpeakerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(networkFailure) ^
      const DeepCollectionEquality().hash(agendaSpeakerId);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Speaker speaker) loadSuccess,
    required TResult Function(
            NetworkFailure networkFailure, int agendaSpeakerId)
        loadFailure,
  }) {
    return loadFailure(networkFailure, agendaSpeakerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Speaker speaker)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaSpeakerId)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(networkFailure, agendaSpeakerId);
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

abstract class _LoadFailure implements AgendaSpeakerState {
  const factory _LoadFailure(
      NetworkFailure networkFailure, int agendaSpeakerId) = _$_LoadFailure;

  NetworkFailure get networkFailure => throw _privateConstructorUsedError;
  int get agendaSpeakerId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
