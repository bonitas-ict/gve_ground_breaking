// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agenda_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AgendaDetailEventTearOff {
  const _$AgendaDetailEventTearOff();

  _GetAgendaDetails getAgendaDetails(int agendaID) {
    return _GetAgendaDetails(
      agendaID,
    );
  }
}

/// @nodoc
const $AgendaDetailEvent = _$AgendaDetailEventTearOff();

/// @nodoc
mixin _$AgendaDetailEvent {
  int get agendaID => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int agendaID) getAgendaDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int agendaID)? getAgendaDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAgendaDetails value) getAgendaDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAgendaDetails value)? getAgendaDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgendaDetailEventCopyWith<AgendaDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaDetailEventCopyWith<$Res> {
  factory $AgendaDetailEventCopyWith(
          AgendaDetailEvent value, $Res Function(AgendaDetailEvent) then) =
      _$AgendaDetailEventCopyWithImpl<$Res>;
  $Res call({int agendaID});
}

/// @nodoc
class _$AgendaDetailEventCopyWithImpl<$Res>
    implements $AgendaDetailEventCopyWith<$Res> {
  _$AgendaDetailEventCopyWithImpl(this._value, this._then);

  final AgendaDetailEvent _value;
  // ignore: unused_field
  final $Res Function(AgendaDetailEvent) _then;

  @override
  $Res call({
    Object? agendaID = freezed,
  }) {
    return _then(_value.copyWith(
      agendaID: agendaID == freezed
          ? _value.agendaID
          : agendaID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GetAgendaDetailsCopyWith<$Res>
    implements $AgendaDetailEventCopyWith<$Res> {
  factory _$GetAgendaDetailsCopyWith(
          _GetAgendaDetails value, $Res Function(_GetAgendaDetails) then) =
      __$GetAgendaDetailsCopyWithImpl<$Res>;
  @override
  $Res call({int agendaID});
}

/// @nodoc
class __$GetAgendaDetailsCopyWithImpl<$Res>
    extends _$AgendaDetailEventCopyWithImpl<$Res>
    implements _$GetAgendaDetailsCopyWith<$Res> {
  __$GetAgendaDetailsCopyWithImpl(
      _GetAgendaDetails _value, $Res Function(_GetAgendaDetails) _then)
      : super(_value, (v) => _then(v as _GetAgendaDetails));

  @override
  _GetAgendaDetails get _value => super._value as _GetAgendaDetails;

  @override
  $Res call({
    Object? agendaID = freezed,
  }) {
    return _then(_GetAgendaDetails(
      agendaID == freezed
          ? _value.agendaID
          : agendaID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetAgendaDetails implements _GetAgendaDetails {
  const _$_GetAgendaDetails(this.agendaID);

  @override
  final int agendaID;

  @override
  String toString() {
    return 'AgendaDetailEvent.getAgendaDetails(agendaID: $agendaID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAgendaDetails &&
            (identical(other.agendaID, agendaID) ||
                const DeepCollectionEquality()
                    .equals(other.agendaID, agendaID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(agendaID);

  @JsonKey(ignore: true)
  @override
  _$GetAgendaDetailsCopyWith<_GetAgendaDetails> get copyWith =>
      __$GetAgendaDetailsCopyWithImpl<_GetAgendaDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int agendaID) getAgendaDetails,
  }) {
    return getAgendaDetails(agendaID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int agendaID)? getAgendaDetails,
    required TResult orElse(),
  }) {
    if (getAgendaDetails != null) {
      return getAgendaDetails(agendaID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAgendaDetails value) getAgendaDetails,
  }) {
    return getAgendaDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAgendaDetails value)? getAgendaDetails,
    required TResult orElse(),
  }) {
    if (getAgendaDetails != null) {
      return getAgendaDetails(this);
    }
    return orElse();
  }
}

abstract class _GetAgendaDetails implements AgendaDetailEvent {
  const factory _GetAgendaDetails(int agendaID) = _$_GetAgendaDetails;

  @override
  int get agendaID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetAgendaDetailsCopyWith<_GetAgendaDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AgendaDetailStateTearOff {
  const _$AgendaDetailStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(Agenda agendas, List<Speaker> speakers) {
    return _LoadSuccess(
      agendas,
      speakers,
    );
  }

  _LoadFailure loadFailure(NetworkFailure networkFailure, int agendaId) {
    return _LoadFailure(
      networkFailure,
      agendaId,
    );
  }
}

/// @nodoc
const $AgendaDetailState = _$AgendaDetailStateTearOff();

/// @nodoc
mixin _$AgendaDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Agenda agendas, List<Speaker> speakers)
        loadSuccess,
    required TResult Function(NetworkFailure networkFailure, int agendaId)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Agenda agendas, List<Speaker> speakers)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaId)? loadFailure,
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
abstract class $AgendaDetailStateCopyWith<$Res> {
  factory $AgendaDetailStateCopyWith(
          AgendaDetailState value, $Res Function(AgendaDetailState) then) =
      _$AgendaDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgendaDetailStateCopyWithImpl<$Res>
    implements $AgendaDetailStateCopyWith<$Res> {
  _$AgendaDetailStateCopyWithImpl(this._value, this._then);

  final AgendaDetailState _value;
  // ignore: unused_field
  final $Res Function(AgendaDetailState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AgendaDetailStateCopyWithImpl<$Res>
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
    return 'AgendaDetailState.initial()';
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
    required TResult Function(Agenda agendas, List<Speaker> speakers)
        loadSuccess,
    required TResult Function(NetworkFailure networkFailure, int agendaId)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Agenda agendas, List<Speaker> speakers)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaId)? loadFailure,
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

abstract class _Initial implements AgendaDetailState {
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
    extends _$AgendaDetailStateCopyWithImpl<$Res>
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
    return 'AgendaDetailState.loadInProgress()';
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
    required TResult Function(Agenda agendas, List<Speaker> speakers)
        loadSuccess,
    required TResult Function(NetworkFailure networkFailure, int agendaId)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Agenda agendas, List<Speaker> speakers)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaId)? loadFailure,
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

abstract class _LoadInProgress implements AgendaDetailState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Agenda agendas, List<Speaker> speakers});

  $AgendaCopyWith<$Res> get agendas;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$AgendaDetailStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? agendas = freezed,
    Object? speakers = freezed,
  }) {
    return _then(_LoadSuccess(
      agendas == freezed
          ? _value.agendas
          : agendas // ignore: cast_nullable_to_non_nullable
              as Agenda,
      speakers == freezed
          ? _value.speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<Speaker>,
    ));
  }

  @override
  $AgendaCopyWith<$Res> get agendas {
    return $AgendaCopyWith<$Res>(_value.agendas, (value) {
      return _then(_value.copyWith(agendas: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.agendas, this.speakers);

  @override
  final Agenda agendas;
  @override
  final List<Speaker> speakers;

  @override
  String toString() {
    return 'AgendaDetailState.loadSuccess(agendas: $agendas, speakers: $speakers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.agendas, agendas) ||
                const DeepCollectionEquality()
                    .equals(other.agendas, agendas)) &&
            (identical(other.speakers, speakers) ||
                const DeepCollectionEquality()
                    .equals(other.speakers, speakers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(agendas) ^
      const DeepCollectionEquality().hash(speakers);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Agenda agendas, List<Speaker> speakers)
        loadSuccess,
    required TResult Function(NetworkFailure networkFailure, int agendaId)
        loadFailure,
  }) {
    return loadSuccess(agendas, speakers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Agenda agendas, List<Speaker> speakers)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaId)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(agendas, speakers);
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

abstract class _LoadSuccess implements AgendaDetailState {
  const factory _LoadSuccess(Agenda agendas, List<Speaker> speakers) =
      _$_LoadSuccess;

  Agenda get agendas => throw _privateConstructorUsedError;
  List<Speaker> get speakers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({NetworkFailure networkFailure, int agendaId});

  $NetworkFailureCopyWith<$Res> get networkFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$AgendaDetailStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? networkFailure = freezed,
    Object? agendaId = freezed,
  }) {
    return _then(_LoadFailure(
      networkFailure == freezed
          ? _value.networkFailure
          : networkFailure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
      agendaId == freezed
          ? _value.agendaId
          : agendaId // ignore: cast_nullable_to_non_nullable
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
  const _$_LoadFailure(this.networkFailure, this.agendaId);

  @override
  final NetworkFailure networkFailure;
  @override
  final int agendaId;

  @override
  String toString() {
    return 'AgendaDetailState.loadFailure(networkFailure: $networkFailure, agendaId: $agendaId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.networkFailure, networkFailure) ||
                const DeepCollectionEquality()
                    .equals(other.networkFailure, networkFailure)) &&
            (identical(other.agendaId, agendaId) ||
                const DeepCollectionEquality()
                    .equals(other.agendaId, agendaId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(networkFailure) ^
      const DeepCollectionEquality().hash(agendaId);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Agenda agendas, List<Speaker> speakers)
        loadSuccess,
    required TResult Function(NetworkFailure networkFailure, int agendaId)
        loadFailure,
  }) {
    return loadFailure(networkFailure, agendaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Agenda agendas, List<Speaker> speakers)? loadSuccess,
    TResult Function(NetworkFailure networkFailure, int agendaId)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(networkFailure, agendaId);
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

abstract class _LoadFailure implements AgendaDetailState {
  const factory _LoadFailure(NetworkFailure networkFailure, int agendaId) =
      _$_LoadFailure;

  NetworkFailure get networkFailure => throw _privateConstructorUsedError;
  int get agendaId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
