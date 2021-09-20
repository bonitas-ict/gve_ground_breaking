// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerificationEventTearOff {
  const _$VerificationEventTearOff();

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

  _PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return _PhoneNumberChanged(
      phoneNumber,
    );
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _VerifyUser verifyUser() {
    return const _VerifyUser();
  }

  _CreateUser createUser() {
    return const _CreateUser();
  }
}

/// @nodoc
const $VerificationEvent = _$VerificationEventTearOff();

/// @nodoc
mixin _$VerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() verifyUser,
    required TResult Function() createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? verifyUser,
    TResult Function()? createUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_VerifyUser value) verifyUser,
    required TResult Function(_CreateUser value) createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_VerifyUser value)? verifyUser,
    TResult Function(_CreateUser value)? createUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEventCopyWith<$Res> {
  factory $VerificationEventCopyWith(
          VerificationEvent value, $Res Function(VerificationEvent) then) =
      _$VerificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerificationEventCopyWithImpl<$Res>
    implements $VerificationEventCopyWith<$Res> {
  _$VerificationEventCopyWithImpl(this._value, this._then);

  final VerificationEvent _value;
  // ignore: unused_field
  final $Res Function(VerificationEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'VerificationEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() verifyUser,
    required TResult Function() createUser,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? verifyUser,
    TResult Function()? createUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_VerifyUser value) verifyUser,
    required TResult Function(_CreateUser value) createUser,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_VerifyUser value)? verifyUser,
    TResult Function(_CreateUser value)? createUser,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements VerificationEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'VerificationEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() verifyUser,
    required TResult Function() createUser,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? verifyUser,
    TResult Function()? createUser,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_VerifyUser value) verifyUser,
    required TResult Function(_CreateUser value) createUser,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_VerifyUser value)? verifyUser,
    TResult Function(_CreateUser value)? createUser,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements VerificationEvent {
  const factory _PhoneNumberChanged(String phoneNumber) = _$_PhoneNumberChanged;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'VerificationEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() verifyUser,
    required TResult Function() createUser,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? verifyUser,
    TResult Function()? createUser,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_VerifyUser value) verifyUser,
    required TResult Function(_CreateUser value) createUser,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_VerifyUser value)? verifyUser,
    TResult Function(_CreateUser value)? createUser,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements VerificationEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifyUserCopyWith<$Res> {
  factory _$VerifyUserCopyWith(
          _VerifyUser value, $Res Function(_VerifyUser) then) =
      __$VerifyUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerifyUserCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res>
    implements _$VerifyUserCopyWith<$Res> {
  __$VerifyUserCopyWithImpl(
      _VerifyUser _value, $Res Function(_VerifyUser) _then)
      : super(_value, (v) => _then(v as _VerifyUser));

  @override
  _VerifyUser get _value => super._value as _VerifyUser;
}

/// @nodoc

class _$_VerifyUser implements _VerifyUser {
  const _$_VerifyUser();

  @override
  String toString() {
    return 'VerificationEvent.verifyUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VerifyUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() verifyUser,
    required TResult Function() createUser,
  }) {
    return verifyUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? verifyUser,
    TResult Function()? createUser,
    required TResult orElse(),
  }) {
    if (verifyUser != null) {
      return verifyUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_VerifyUser value) verifyUser,
    required TResult Function(_CreateUser value) createUser,
  }) {
    return verifyUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_VerifyUser value)? verifyUser,
    TResult Function(_CreateUser value)? createUser,
    required TResult orElse(),
  }) {
    if (verifyUser != null) {
      return verifyUser(this);
    }
    return orElse();
  }
}

abstract class _VerifyUser implements VerificationEvent {
  const factory _VerifyUser() = _$_VerifyUser;
}

/// @nodoc
abstract class _$CreateUserCopyWith<$Res> {
  factory _$CreateUserCopyWith(
          _CreateUser value, $Res Function(_CreateUser) then) =
      __$CreateUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateUserCopyWithImpl<$Res>
    extends _$VerificationEventCopyWithImpl<$Res>
    implements _$CreateUserCopyWith<$Res> {
  __$CreateUserCopyWithImpl(
      _CreateUser _value, $Res Function(_CreateUser) _then)
      : super(_value, (v) => _then(v as _CreateUser));

  @override
  _CreateUser get _value => super._value as _CreateUser;
}

/// @nodoc

class _$_CreateUser implements _CreateUser {
  const _$_CreateUser();

  @override
  String toString() {
    return 'VerificationEvent.createUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() verifyUser,
    required TResult Function() createUser,
  }) {
    return createUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? verifyUser,
    TResult Function()? createUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_VerifyUser value) verifyUser,
    required TResult Function(_CreateUser value) createUser,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_VerifyUser value)? verifyUser,
    TResult Function(_CreateUser value)? createUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class _CreateUser implements VerificationEvent {
  const factory _CreateUser() = _$_CreateUser;
}

/// @nodoc
class _$VerificationStateTearOff {
  const _$VerificationStateTearOff();

  _VerificationState call(
      {required String name,
      required String email,
      required String phoneNumber,
      required bool isSubmitting,
      required Option<Either<NetworkFailure, BaseResponse>>
          authFailureOrSuccessOption}) {
    return _VerificationState(
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $VerificationState = _$VerificationStateTearOff();

/// @nodoc
mixin _$VerificationState {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<NetworkFailure, BaseResponse>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerificationStateCopyWith<VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String email,
      String phoneNumber,
      bool isSubmitting,
      Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption});
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  final VerificationState _value;
  // ignore: unused_field
  final $Res Function(VerificationState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
abstract class _$VerificationStateCopyWith<$Res>
    implements $VerificationStateCopyWith<$Res> {
  factory _$VerificationStateCopyWith(
          _VerificationState value, $Res Function(_VerificationState) then) =
      __$VerificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String email,
      String phoneNumber,
      bool isSubmitting,
      Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption});
}

/// @nodoc
class __$VerificationStateCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res>
    implements _$VerificationStateCopyWith<$Res> {
  __$VerificationStateCopyWithImpl(
      _VerificationState _value, $Res Function(_VerificationState) _then)
      : super(_value, (v) => _then(v as _VerificationState));

  @override
  _VerificationState get _value => super._value as _VerificationState;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_VerificationState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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

class _$_VerificationState implements _VerificationState {
  const _$_VerificationState(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final String name;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<NetworkFailure, BaseResponse>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'VerificationState(name: $name, email: $email, phoneNumber: $phoneNumber, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerificationState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$VerificationStateCopyWith<_VerificationState> get copyWith =>
      __$VerificationStateCopyWithImpl<_VerificationState>(this, _$identity);
}

abstract class _VerificationState implements VerificationState {
  const factory _VerificationState(
      {required String name,
      required String email,
      required String phoneNumber,
      required bool isSubmitting,
      required Option<Either<NetworkFailure, BaseResponse>>
          authFailureOrSuccessOption}) = _$_VerificationState;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<NetworkFailure, BaseResponse>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerificationStateCopyWith<_VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
