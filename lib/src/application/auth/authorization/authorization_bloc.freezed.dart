// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthorizationEventTearOff {
  const _$AuthorizationEventTearOff();

  _PinChanged pinChanged(String pin) {
    return _PinChanged(
      pin,
    );
  }

  _VerifyPin verifyPin() {
    return const _VerifyPin();
  }
}

/// @nodoc
const $AuthorizationEvent = _$AuthorizationEventTearOff();

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinChanged,
    required TResult Function() verifyPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinChanged,
    TResult Function()? verifyPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifyPin value) verifyPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifyPin value)? verifyPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  final AuthorizationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthorizationEvent) _then;
}

/// @nodoc
abstract class _$PinChangedCopyWith<$Res> {
  factory _$PinChangedCopyWith(
          _PinChanged value, $Res Function(_PinChanged) then) =
      __$PinChangedCopyWithImpl<$Res>;
  $Res call({String pin});
}

/// @nodoc
class __$PinChangedCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements _$PinChangedCopyWith<$Res> {
  __$PinChangedCopyWithImpl(
      _PinChanged _value, $Res Function(_PinChanged) _then)
      : super(_value, (v) => _then(v as _PinChanged));

  @override
  _PinChanged get _value => super._value as _PinChanged;

  @override
  $Res call({
    Object? pin = freezed,
  }) {
    return _then(_PinChanged(
      pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PinChanged implements _PinChanged {
  const _$_PinChanged(this.pin);

  @override
  final String pin;

  @override
  String toString() {
    return 'AuthorizationEvent.pinChanged(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PinChanged &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pin);

  @JsonKey(ignore: true)
  @override
  _$PinChangedCopyWith<_PinChanged> get copyWith =>
      __$PinChangedCopyWithImpl<_PinChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinChanged,
    required TResult Function() verifyPin,
  }) {
    return pinChanged(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinChanged,
    TResult Function()? verifyPin,
    required TResult orElse(),
  }) {
    if (pinChanged != null) {
      return pinChanged(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifyPin value) verifyPin,
  }) {
    return pinChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifyPin value)? verifyPin,
    required TResult orElse(),
  }) {
    if (pinChanged != null) {
      return pinChanged(this);
    }
    return orElse();
  }
}

abstract class _PinChanged implements AuthorizationEvent {
  const factory _PinChanged(String pin) = _$_PinChanged;

  String get pin => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PinChangedCopyWith<_PinChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifyPinCopyWith<$Res> {
  factory _$VerifyPinCopyWith(
          _VerifyPin value, $Res Function(_VerifyPin) then) =
      __$VerifyPinCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerifyPinCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements _$VerifyPinCopyWith<$Res> {
  __$VerifyPinCopyWithImpl(_VerifyPin _value, $Res Function(_VerifyPin) _then)
      : super(_value, (v) => _then(v as _VerifyPin));

  @override
  _VerifyPin get _value => super._value as _VerifyPin;
}

/// @nodoc

class _$_VerifyPin implements _VerifyPin {
  const _$_VerifyPin();

  @override
  String toString() {
    return 'AuthorizationEvent.verifyPin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VerifyPin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinChanged,
    required TResult Function() verifyPin,
  }) {
    return verifyPin();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinChanged,
    TResult Function()? verifyPin,
    required TResult orElse(),
  }) {
    if (verifyPin != null) {
      return verifyPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifyPin value) verifyPin,
  }) {
    return verifyPin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifyPin value)? verifyPin,
    required TResult orElse(),
  }) {
    if (verifyPin != null) {
      return verifyPin(this);
    }
    return orElse();
  }
}

abstract class _VerifyPin implements AuthorizationEvent {
  const factory _VerifyPin() = _$_VerifyPin;
}

/// @nodoc
class _$AuthorizationStateTearOff {
  const _$AuthorizationStateTearOff();

  _AuthorizationState call(
      {required String pin,
      required bool isSubmitting,
      required Option<Either<NetworkFailure, BaseResponse>>
          authFailureOrSuccessOption}) {
    return _AuthorizationState(
      pin: pin,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $AuthorizationState = _$AuthorizationStateTearOff();

/// @nodoc
mixin _$AuthorizationState {
  String get pin => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<NetworkFailure, BaseResponse>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizationStateCopyWith<AuthorizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res>;
  $Res call(
      {String pin,
      bool isSubmitting,
      Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption});
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  final AuthorizationState _value;
  // ignore: unused_field
  final $Res Function(AuthorizationState) _then;

  @override
  $Res call({
    Object? pin = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
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
abstract class _$AuthorizationStateCopyWith<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  factory _$AuthorizationStateCopyWith(
          _AuthorizationState value, $Res Function(_AuthorizationState) then) =
      __$AuthorizationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String pin,
      bool isSubmitting,
      Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption});
}

/// @nodoc
class __$AuthorizationStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements _$AuthorizationStateCopyWith<$Res> {
  __$AuthorizationStateCopyWithImpl(
      _AuthorizationState _value, $Res Function(_AuthorizationState) _then)
      : super(_value, (v) => _then(v as _AuthorizationState));

  @override
  _AuthorizationState get _value => super._value as _AuthorizationState;

  @override
  $Res call({
    Object? pin = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_AuthorizationState(
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
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

class _$_AuthorizationState implements _AuthorizationState {
  const _$_AuthorizationState(
      {required this.pin,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final String pin;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthorizationState(pin: $pin, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthorizationState &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
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
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$AuthorizationStateCopyWith<_AuthorizationState> get copyWith =>
      __$AuthorizationStateCopyWithImpl<_AuthorizationState>(this, _$identity);
}

abstract class _AuthorizationState implements AuthorizationState {
  const factory _AuthorizationState(
      {required String pin,
      required bool isSubmitting,
      required Option<Either<NetworkFailure, BaseResponse>>
          authFailureOrSuccessOption}) = _$_AuthorizationState;

  @override
  String get pin => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<NetworkFailure, BaseResponse>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthorizationStateCopyWith<_AuthorizationState> get copyWith =>
      throw _privateConstructorUsedError;
}
