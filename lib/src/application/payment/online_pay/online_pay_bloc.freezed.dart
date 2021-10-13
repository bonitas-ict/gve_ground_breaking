// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'online_pay_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnlinePayEventTearOff {
  const _$OnlinePayEventTearOff();

  _VerifyPayment verifyPayment(String referenceId) {
    return _VerifyPayment(
      referenceId,
    );
  }
}

/// @nodoc
const $OnlinePayEvent = _$OnlinePayEventTearOff();

/// @nodoc
mixin _$OnlinePayEvent {
  String get referenceId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String referenceId) verifyPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String referenceId)? verifyPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPayment value) verifyPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPayment value)? verifyPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnlinePayEventCopyWith<OnlinePayEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinePayEventCopyWith<$Res> {
  factory $OnlinePayEventCopyWith(
          OnlinePayEvent value, $Res Function(OnlinePayEvent) then) =
      _$OnlinePayEventCopyWithImpl<$Res>;
  $Res call({String referenceId});
}

/// @nodoc
class _$OnlinePayEventCopyWithImpl<$Res>
    implements $OnlinePayEventCopyWith<$Res> {
  _$OnlinePayEventCopyWithImpl(this._value, this._then);

  final OnlinePayEvent _value;
  // ignore: unused_field
  final $Res Function(OnlinePayEvent) _then;

  @override
  $Res call({
    Object? referenceId = freezed,
  }) {
    return _then(_value.copyWith(
      referenceId: referenceId == freezed
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VerifyPaymentCopyWith<$Res>
    implements $OnlinePayEventCopyWith<$Res> {
  factory _$VerifyPaymentCopyWith(
          _VerifyPayment value, $Res Function(_VerifyPayment) then) =
      __$VerifyPaymentCopyWithImpl<$Res>;
  @override
  $Res call({String referenceId});
}

/// @nodoc
class __$VerifyPaymentCopyWithImpl<$Res>
    extends _$OnlinePayEventCopyWithImpl<$Res>
    implements _$VerifyPaymentCopyWith<$Res> {
  __$VerifyPaymentCopyWithImpl(
      _VerifyPayment _value, $Res Function(_VerifyPayment) _then)
      : super(_value, (v) => _then(v as _VerifyPayment));

  @override
  _VerifyPayment get _value => super._value as _VerifyPayment;

  @override
  $Res call({
    Object? referenceId = freezed,
  }) {
    return _then(_VerifyPayment(
      referenceId == freezed
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyPayment implements _VerifyPayment {
  const _$_VerifyPayment(this.referenceId);

  @override
  final String referenceId;

  @override
  String toString() {
    return 'OnlinePayEvent.verifyPayment(referenceId: $referenceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyPayment &&
            (identical(other.referenceId, referenceId) ||
                const DeepCollectionEquality()
                    .equals(other.referenceId, referenceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(referenceId);

  @JsonKey(ignore: true)
  @override
  _$VerifyPaymentCopyWith<_VerifyPayment> get copyWith =>
      __$VerifyPaymentCopyWithImpl<_VerifyPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String referenceId) verifyPayment,
  }) {
    return verifyPayment(referenceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String referenceId)? verifyPayment,
    required TResult orElse(),
  }) {
    if (verifyPayment != null) {
      return verifyPayment(referenceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPayment value) verifyPayment,
  }) {
    return verifyPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPayment value)? verifyPayment,
    required TResult orElse(),
  }) {
    if (verifyPayment != null) {
      return verifyPayment(this);
    }
    return orElse();
  }
}

abstract class _VerifyPayment implements OnlinePayEvent {
  const factory _VerifyPayment(String referenceId) = _$_VerifyPayment;

  @override
  String get referenceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyPaymentCopyWith<_VerifyPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OnlinePayStateTearOff {
  const _$OnlinePayStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  LoadInProgressX loadInProgress() {
    return const LoadInProgressX();
  }

  _LoadSuccess loadSuccess(BaseResponse propertyInfo) {
    return _LoadSuccess(
      propertyInfo,
    );
  }

  _LoadFailure loadFailure(NetworkFailure networkFailure) {
    return _LoadFailure(
      networkFailure,
    );
  }
}

/// @nodoc
const $OnlinePayState = _$OnlinePayStateTearOff();

/// @nodoc
mixin _$OnlinePayState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(BaseResponse propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(BaseResponse propertyInfo)? loadSuccess,
    TResult Function(NetworkFailure networkFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgressX value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgressX value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinePayStateCopyWith<$Res> {
  factory $OnlinePayStateCopyWith(
          OnlinePayState value, $Res Function(OnlinePayState) then) =
      _$OnlinePayStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnlinePayStateCopyWithImpl<$Res>
    implements $OnlinePayStateCopyWith<$Res> {
  _$OnlinePayStateCopyWithImpl(this._value, this._then);

  final OnlinePayState _value;
  // ignore: unused_field
  final $Res Function(OnlinePayState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OnlinePayStateCopyWithImpl<$Res>
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
    return 'OnlinePayState.initial()';
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
    required TResult Function(BaseResponse propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(BaseResponse propertyInfo)? loadSuccess,
    TResult Function(NetworkFailure networkFailure)? loadFailure,
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
    required TResult Function(LoadInProgressX value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgressX value)? loadInProgress,
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

abstract class _Initial implements OnlinePayState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadInProgressXCopyWith<$Res> {
  factory $LoadInProgressXCopyWith(
          LoadInProgressX value, $Res Function(LoadInProgressX) then) =
      _$LoadInProgressXCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgressXCopyWithImpl<$Res>
    extends _$OnlinePayStateCopyWithImpl<$Res>
    implements $LoadInProgressXCopyWith<$Res> {
  _$LoadInProgressXCopyWithImpl(
      LoadInProgressX _value, $Res Function(LoadInProgressX) _then)
      : super(_value, (v) => _then(v as LoadInProgressX));

  @override
  LoadInProgressX get _value => super._value as LoadInProgressX;
}

/// @nodoc

class _$LoadInProgressX implements LoadInProgressX {
  const _$LoadInProgressX();

  @override
  String toString() {
    return 'OnlinePayState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgressX);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(BaseResponse propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(BaseResponse propertyInfo)? loadSuccess,
    TResult Function(NetworkFailure networkFailure)? loadFailure,
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
    required TResult Function(LoadInProgressX value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgressX value)? loadInProgress,
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

abstract class LoadInProgressX implements OnlinePayState {
  const factory LoadInProgressX() = _$LoadInProgressX;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({BaseResponse propertyInfo});

  $BaseResponseCopyWith<$Res> get propertyInfo;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$OnlinePayStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? propertyInfo = freezed,
  }) {
    return _then(_LoadSuccess(
      propertyInfo == freezed
          ? _value.propertyInfo
          : propertyInfo // ignore: cast_nullable_to_non_nullable
              as BaseResponse,
    ));
  }

  @override
  $BaseResponseCopyWith<$Res> get propertyInfo {
    return $BaseResponseCopyWith<$Res>(_value.propertyInfo, (value) {
      return _then(_value.copyWith(propertyInfo: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.propertyInfo);

  @override
  final BaseResponse propertyInfo;

  @override
  String toString() {
    return 'OnlinePayState.loadSuccess(propertyInfo: $propertyInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.propertyInfo, propertyInfo) ||
                const DeepCollectionEquality()
                    .equals(other.propertyInfo, propertyInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(propertyInfo);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(BaseResponse propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) {
    return loadSuccess(propertyInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(BaseResponse propertyInfo)? loadSuccess,
    TResult Function(NetworkFailure networkFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(propertyInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgressX value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgressX value)? loadInProgress,
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

abstract class _LoadSuccess implements OnlinePayState {
  const factory _LoadSuccess(BaseResponse propertyInfo) = _$_LoadSuccess;

  BaseResponse get propertyInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({NetworkFailure networkFailure});

  $NetworkFailureCopyWith<$Res> get networkFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$OnlinePayStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? networkFailure = freezed,
  }) {
    return _then(_LoadFailure(
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
  const _$_LoadFailure(this.networkFailure);

  @override
  final NetworkFailure networkFailure;

  @override
  String toString() {
    return 'OnlinePayState.loadFailure(networkFailure: $networkFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.networkFailure, networkFailure) ||
                const DeepCollectionEquality()
                    .equals(other.networkFailure, networkFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(networkFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(BaseResponse propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) {
    return loadFailure(networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(BaseResponse propertyInfo)? loadSuccess,
    TResult Function(NetworkFailure networkFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(networkFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadInProgressX value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadInProgressX value)? loadInProgress,
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

abstract class _LoadFailure implements OnlinePayState {
  const factory _LoadFailure(NetworkFailure networkFailure) = _$_LoadFailure;

  NetworkFailure get networkFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
