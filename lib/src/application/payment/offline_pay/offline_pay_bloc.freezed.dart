// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'offline_pay_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfflinePayEventTearOff {
  const _$OfflinePayEventTearOff();

  _SubmitEvidence submitEvidence(Map<String, dynamic>? evidence) {
    return _SubmitEvidence(
      evidence,
    );
  }

  _SetPlotId setPlotId(String plotId) {
    return _SetPlotId(
      plotId,
    );
  }
}

/// @nodoc
const $OfflinePayEvent = _$OfflinePayEventTearOff();

/// @nodoc
mixin _$OfflinePayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic>? evidence) submitEvidence,
    required TResult Function(String plotId) setPlotId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic>? evidence)? submitEvidence,
    TResult Function(String plotId)? setPlotId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitEvidence value) submitEvidence,
    required TResult Function(_SetPlotId value) setPlotId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitEvidence value)? submitEvidence,
    TResult Function(_SetPlotId value)? setPlotId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflinePayEventCopyWith<$Res> {
  factory $OfflinePayEventCopyWith(
          OfflinePayEvent value, $Res Function(OfflinePayEvent) then) =
      _$OfflinePayEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OfflinePayEventCopyWithImpl<$Res>
    implements $OfflinePayEventCopyWith<$Res> {
  _$OfflinePayEventCopyWithImpl(this._value, this._then);

  final OfflinePayEvent _value;
  // ignore: unused_field
  final $Res Function(OfflinePayEvent) _then;
}

/// @nodoc
abstract class _$SubmitEvidenceCopyWith<$Res> {
  factory _$SubmitEvidenceCopyWith(
          _SubmitEvidence value, $Res Function(_SubmitEvidence) then) =
      __$SubmitEvidenceCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic>? evidence});
}

/// @nodoc
class __$SubmitEvidenceCopyWithImpl<$Res>
    extends _$OfflinePayEventCopyWithImpl<$Res>
    implements _$SubmitEvidenceCopyWith<$Res> {
  __$SubmitEvidenceCopyWithImpl(
      _SubmitEvidence _value, $Res Function(_SubmitEvidence) _then)
      : super(_value, (v) => _then(v as _SubmitEvidence));

  @override
  _SubmitEvidence get _value => super._value as _SubmitEvidence;

  @override
  $Res call({
    Object? evidence = freezed,
  }) {
    return _then(_SubmitEvidence(
      evidence == freezed
          ? _value.evidence
          : evidence // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_SubmitEvidence implements _SubmitEvidence {
  const _$_SubmitEvidence(this.evidence);

  @override
  final Map<String, dynamic>? evidence;

  @override
  String toString() {
    return 'OfflinePayEvent.submitEvidence(evidence: $evidence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitEvidence &&
            (identical(other.evidence, evidence) ||
                const DeepCollectionEquality()
                    .equals(other.evidence, evidence)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(evidence);

  @JsonKey(ignore: true)
  @override
  _$SubmitEvidenceCopyWith<_SubmitEvidence> get copyWith =>
      __$SubmitEvidenceCopyWithImpl<_SubmitEvidence>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic>? evidence) submitEvidence,
    required TResult Function(String plotId) setPlotId,
  }) {
    return submitEvidence(evidence);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic>? evidence)? submitEvidence,
    TResult Function(String plotId)? setPlotId,
    required TResult orElse(),
  }) {
    if (submitEvidence != null) {
      return submitEvidence(evidence);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitEvidence value) submitEvidence,
    required TResult Function(_SetPlotId value) setPlotId,
  }) {
    return submitEvidence(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitEvidence value)? submitEvidence,
    TResult Function(_SetPlotId value)? setPlotId,
    required TResult orElse(),
  }) {
    if (submitEvidence != null) {
      return submitEvidence(this);
    }
    return orElse();
  }
}

abstract class _SubmitEvidence implements OfflinePayEvent {
  const factory _SubmitEvidence(Map<String, dynamic>? evidence) =
      _$_SubmitEvidence;

  Map<String, dynamic>? get evidence => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubmitEvidenceCopyWith<_SubmitEvidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetPlotIdCopyWith<$Res> {
  factory _$SetPlotIdCopyWith(
          _SetPlotId value, $Res Function(_SetPlotId) then) =
      __$SetPlotIdCopyWithImpl<$Res>;
  $Res call({String plotId});
}

/// @nodoc
class __$SetPlotIdCopyWithImpl<$Res> extends _$OfflinePayEventCopyWithImpl<$Res>
    implements _$SetPlotIdCopyWith<$Res> {
  __$SetPlotIdCopyWithImpl(_SetPlotId _value, $Res Function(_SetPlotId) _then)
      : super(_value, (v) => _then(v as _SetPlotId));

  @override
  _SetPlotId get _value => super._value as _SetPlotId;

  @override
  $Res call({
    Object? plotId = freezed,
  }) {
    return _then(_SetPlotId(
      plotId == freezed
          ? _value.plotId
          : plotId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetPlotId implements _SetPlotId {
  const _$_SetPlotId(this.plotId);

  @override
  final String plotId;

  @override
  String toString() {
    return 'OfflinePayEvent.setPlotId(plotId: $plotId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetPlotId &&
            (identical(other.plotId, plotId) ||
                const DeepCollectionEquality().equals(other.plotId, plotId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(plotId);

  @JsonKey(ignore: true)
  @override
  _$SetPlotIdCopyWith<_SetPlotId> get copyWith =>
      __$SetPlotIdCopyWithImpl<_SetPlotId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic>? evidence) submitEvidence,
    required TResult Function(String plotId) setPlotId,
  }) {
    return setPlotId(plotId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic>? evidence)? submitEvidence,
    TResult Function(String plotId)? setPlotId,
    required TResult orElse(),
  }) {
    if (setPlotId != null) {
      return setPlotId(plotId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitEvidence value) submitEvidence,
    required TResult Function(_SetPlotId value) setPlotId,
  }) {
    return setPlotId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitEvidence value)? submitEvidence,
    TResult Function(_SetPlotId value)? setPlotId,
    required TResult orElse(),
  }) {
    if (setPlotId != null) {
      return setPlotId(this);
    }
    return orElse();
  }
}

abstract class _SetPlotId implements OfflinePayEvent {
  const factory _SetPlotId(String plotId) = _$_SetPlotId;

  String get plotId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetPlotIdCopyWith<_SetPlotId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OfflinePayStateTearOff {
  const _$OfflinePayStateTearOff();

  _OfflinePayState call(
      {required String plotId,
      required bool isSubmitting,
      required Option<Either<NetworkFailure, BaseResponse>>
          authFailureOrSuccessOption}) {
    return _OfflinePayState(
      plotId: plotId,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $OfflinePayState = _$OfflinePayStateTearOff();

/// @nodoc
mixin _$OfflinePayState {
  String get plotId => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<NetworkFailure, BaseResponse>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfflinePayStateCopyWith<OfflinePayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflinePayStateCopyWith<$Res> {
  factory $OfflinePayStateCopyWith(
          OfflinePayState value, $Res Function(OfflinePayState) then) =
      _$OfflinePayStateCopyWithImpl<$Res>;
  $Res call(
      {String plotId,
      bool isSubmitting,
      Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption});
}

/// @nodoc
class _$OfflinePayStateCopyWithImpl<$Res>
    implements $OfflinePayStateCopyWith<$Res> {
  _$OfflinePayStateCopyWithImpl(this._value, this._then);

  final OfflinePayState _value;
  // ignore: unused_field
  final $Res Function(OfflinePayState) _then;

  @override
  $Res call({
    Object? plotId = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      plotId: plotId == freezed
          ? _value.plotId
          : plotId // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkFailure, BaseResponse>>,
    ));
  }
}

/// @nodoc
abstract class _$OfflinePayStateCopyWith<$Res>
    implements $OfflinePayStateCopyWith<$Res> {
  factory _$OfflinePayStateCopyWith(
          _OfflinePayState value, $Res Function(_OfflinePayState) then) =
      __$OfflinePayStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String plotId,
      bool isSubmitting,
      Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption});
}

/// @nodoc
class __$OfflinePayStateCopyWithImpl<$Res>
    extends _$OfflinePayStateCopyWithImpl<$Res>
    implements _$OfflinePayStateCopyWith<$Res> {
  __$OfflinePayStateCopyWithImpl(
      _OfflinePayState _value, $Res Function(_OfflinePayState) _then)
      : super(_value, (v) => _then(v as _OfflinePayState));

  @override
  _OfflinePayState get _value => super._value as _OfflinePayState;

  @override
  $Res call({
    Object? plotId = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_OfflinePayState(
      plotId: plotId == freezed
          ? _value.plotId
          : plotId // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkFailure, BaseResponse>>,
    ));
  }
}

/// @nodoc

class _$_OfflinePayState implements _OfflinePayState {
  const _$_OfflinePayState(
      {required this.plotId,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final String plotId;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'OfflinePayState(plotId: $plotId, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OfflinePayState &&
            (identical(other.plotId, plotId) ||
                const DeepCollectionEquality().equals(other.plotId, plotId)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(plotId) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$OfflinePayStateCopyWith<_OfflinePayState> get copyWith =>
      __$OfflinePayStateCopyWithImpl<_OfflinePayState>(this, _$identity);
}

abstract class _OfflinePayState implements OfflinePayState {
  const factory _OfflinePayState(
      {required String plotId,
      required bool isSubmitting,
      required Option<Either<NetworkFailure, BaseResponse>>
          authFailureOrSuccessOption}) = _$_OfflinePayState;

  @override
  String get plotId => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<NetworkFailure, BaseResponse>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OfflinePayStateCopyWith<_OfflinePayState> get copyWith =>
      throw _privateConstructorUsedError;
}
