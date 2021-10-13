// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_init_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentInitEventTearOff {
  const _$PaymentInitEventTearOff();

  _InitPayment initPayment(String plotId) {
    return _InitPayment(
      plotId,
    );
  }
}

/// @nodoc
const $PaymentInitEvent = _$PaymentInitEventTearOff();

/// @nodoc
mixin _$PaymentInitEvent {
  String get plotId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String plotId) initPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String plotId)? initPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitPayment value) initPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitPayment value)? initPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentInitEventCopyWith<PaymentInitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInitEventCopyWith<$Res> {
  factory $PaymentInitEventCopyWith(
          PaymentInitEvent value, $Res Function(PaymentInitEvent) then) =
      _$PaymentInitEventCopyWithImpl<$Res>;
  $Res call({String plotId});
}

/// @nodoc
class _$PaymentInitEventCopyWithImpl<$Res>
    implements $PaymentInitEventCopyWith<$Res> {
  _$PaymentInitEventCopyWithImpl(this._value, this._then);

  final PaymentInitEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentInitEvent) _then;

  @override
  $Res call({
    Object? plotId = freezed,
  }) {
    return _then(_value.copyWith(
      plotId: plotId == freezed
          ? _value.plotId
          : plotId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitPaymentCopyWith<$Res>
    implements $PaymentInitEventCopyWith<$Res> {
  factory _$InitPaymentCopyWith(
          _InitPayment value, $Res Function(_InitPayment) then) =
      __$InitPaymentCopyWithImpl<$Res>;
  @override
  $Res call({String plotId});
}

/// @nodoc
class __$InitPaymentCopyWithImpl<$Res>
    extends _$PaymentInitEventCopyWithImpl<$Res>
    implements _$InitPaymentCopyWith<$Res> {
  __$InitPaymentCopyWithImpl(
      _InitPayment _value, $Res Function(_InitPayment) _then)
      : super(_value, (v) => _then(v as _InitPayment));

  @override
  _InitPayment get _value => super._value as _InitPayment;

  @override
  $Res call({
    Object? plotId = freezed,
  }) {
    return _then(_InitPayment(
      plotId == freezed
          ? _value.plotId
          : plotId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitPayment implements _InitPayment {
  const _$_InitPayment(this.plotId);

  @override
  final String plotId;

  @override
  String toString() {
    return 'PaymentInitEvent.initPayment(plotId: $plotId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitPayment &&
            (identical(other.plotId, plotId) ||
                const DeepCollectionEquality().equals(other.plotId, plotId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(plotId);

  @JsonKey(ignore: true)
  @override
  _$InitPaymentCopyWith<_InitPayment> get copyWith =>
      __$InitPaymentCopyWithImpl<_InitPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String plotId) initPayment,
  }) {
    return initPayment(plotId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String plotId)? initPayment,
    required TResult orElse(),
  }) {
    if (initPayment != null) {
      return initPayment(plotId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitPayment value) initPayment,
  }) {
    return initPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitPayment value)? initPayment,
    required TResult orElse(),
  }) {
    if (initPayment != null) {
      return initPayment(this);
    }
    return orElse();
  }
}

abstract class _InitPayment implements PaymentInitEvent {
  const factory _InitPayment(String plotId) = _$_InitPayment;

  @override
  String get plotId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitPaymentCopyWith<_InitPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaymentInitStateTearOff {
  const _$PaymentInitStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(PropertyInitDTO propertyInfo) {
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
const $PaymentInitState = _$PaymentInitStateTearOff();

/// @nodoc
mixin _$PaymentInitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PropertyInitDTO propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PropertyInitDTO propertyInfo)? loadSuccess,
    TResult Function(NetworkFailure networkFailure)? loadFailure,
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
abstract class $PaymentInitStateCopyWith<$Res> {
  factory $PaymentInitStateCopyWith(
          PaymentInitState value, $Res Function(PaymentInitState) then) =
      _$PaymentInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentInitStateCopyWithImpl<$Res>
    implements $PaymentInitStateCopyWith<$Res> {
  _$PaymentInitStateCopyWithImpl(this._value, this._then);

  final PaymentInitState _value;
  // ignore: unused_field
  final $Res Function(PaymentInitState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PaymentInitStateCopyWithImpl<$Res>
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
    return 'PaymentInitState.initial()';
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
    required TResult Function(PropertyInitDTO propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PropertyInitDTO propertyInfo)? loadSuccess,
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

abstract class _Initial implements PaymentInitState {
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
    extends _$PaymentInitStateCopyWithImpl<$Res>
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
    return 'PaymentInitState.loadInProgress()';
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
    required TResult Function(PropertyInitDTO propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PropertyInitDTO propertyInfo)? loadSuccess,
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

abstract class _LoadInProgress implements PaymentInitState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({PropertyInitDTO propertyInfo});

  $PropertyInitDTOCopyWith<$Res> get propertyInfo;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PaymentInitStateCopyWithImpl<$Res>
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
              as PropertyInitDTO,
    ));
  }

  @override
  $PropertyInitDTOCopyWith<$Res> get propertyInfo {
    return $PropertyInitDTOCopyWith<$Res>(_value.propertyInfo, (value) {
      return _then(_value.copyWith(propertyInfo: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.propertyInfo);

  @override
  final PropertyInitDTO propertyInfo;

  @override
  String toString() {
    return 'PaymentInitState.loadSuccess(propertyInfo: $propertyInfo)';
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
    required TResult Function(PropertyInitDTO propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) {
    return loadSuccess(propertyInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PropertyInitDTO propertyInfo)? loadSuccess,
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

abstract class _LoadSuccess implements PaymentInitState {
  const factory _LoadSuccess(PropertyInitDTO propertyInfo) = _$_LoadSuccess;

  PropertyInitDTO get propertyInfo => throw _privateConstructorUsedError;
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
    extends _$PaymentInitStateCopyWithImpl<$Res>
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
    return 'PaymentInitState.loadFailure(networkFailure: $networkFailure)';
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
    required TResult Function(PropertyInitDTO propertyInfo) loadSuccess,
    required TResult Function(NetworkFailure networkFailure) loadFailure,
  }) {
    return loadFailure(networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PropertyInitDTO propertyInfo)? loadSuccess,
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

abstract class _LoadFailure implements PaymentInitState {
  const factory _LoadFailure(NetworkFailure networkFailure) = _$_LoadFailure;

  NetworkFailure get networkFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
