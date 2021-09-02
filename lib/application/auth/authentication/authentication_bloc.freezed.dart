// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  UnAuthenticatedEvent unAuthenticatedEvent() {
    return const UnAuthenticatedEvent();
  }

  AuthenticatedEvent authenticatedEvent() {
    return const AuthenticatedEvent();
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticatedEvent,
    required TResult Function() authenticatedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticatedEvent,
    TResult Function()? authenticatedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticatedEvent value) unAuthenticatedEvent,
    required TResult Function(AuthenticatedEvent value) authenticatedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticatedEvent value)? unAuthenticatedEvent,
    TResult Function(AuthenticatedEvent value)? authenticatedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $UnAuthenticatedEventCopyWith<$Res> {
  factory $UnAuthenticatedEventCopyWith(UnAuthenticatedEvent value,
          $Res Function(UnAuthenticatedEvent) then) =
      _$UnAuthenticatedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthenticatedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $UnAuthenticatedEventCopyWith<$Res> {
  _$UnAuthenticatedEventCopyWithImpl(
      UnAuthenticatedEvent _value, $Res Function(UnAuthenticatedEvent) _then)
      : super(_value, (v) => _then(v as UnAuthenticatedEvent));

  @override
  UnAuthenticatedEvent get _value => super._value as UnAuthenticatedEvent;
}

/// @nodoc

class _$UnAuthenticatedEvent implements UnAuthenticatedEvent {
  const _$UnAuthenticatedEvent();

  @override
  String toString() {
    return 'AuthenticationEvent.unAuthenticatedEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthenticatedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticatedEvent,
    required TResult Function() authenticatedEvent,
  }) {
    return unAuthenticatedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticatedEvent,
    TResult Function()? authenticatedEvent,
    required TResult orElse(),
  }) {
    if (unAuthenticatedEvent != null) {
      return unAuthenticatedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticatedEvent value) unAuthenticatedEvent,
    required TResult Function(AuthenticatedEvent value) authenticatedEvent,
  }) {
    return unAuthenticatedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticatedEvent value)? unAuthenticatedEvent,
    TResult Function(AuthenticatedEvent value)? authenticatedEvent,
    required TResult orElse(),
  }) {
    if (unAuthenticatedEvent != null) {
      return unAuthenticatedEvent(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticatedEvent implements AuthenticationEvent {
  const factory UnAuthenticatedEvent() = _$UnAuthenticatedEvent;
}

/// @nodoc
abstract class $AuthenticatedEventCopyWith<$Res> {
  factory $AuthenticatedEventCopyWith(
          AuthenticatedEvent value, $Res Function(AuthenticatedEvent) then) =
      _$AuthenticatedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticatedEventCopyWith<$Res> {
  _$AuthenticatedEventCopyWithImpl(
      AuthenticatedEvent _value, $Res Function(AuthenticatedEvent) _then)
      : super(_value, (v) => _then(v as AuthenticatedEvent));

  @override
  AuthenticatedEvent get _value => super._value as AuthenticatedEvent;
}

/// @nodoc

class _$AuthenticatedEvent implements AuthenticatedEvent {
  const _$AuthenticatedEvent();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticatedEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticatedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticatedEvent,
    required TResult Function() authenticatedEvent,
  }) {
    return authenticatedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticatedEvent,
    TResult Function()? authenticatedEvent,
    required TResult orElse(),
  }) {
    if (authenticatedEvent != null) {
      return authenticatedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticatedEvent value) unAuthenticatedEvent,
    required TResult Function(AuthenticatedEvent value) authenticatedEvent,
  }) {
    return authenticatedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticatedEvent value)? unAuthenticatedEvent,
    TResult Function(AuthenticatedEvent value)? authenticatedEvent,
    required TResult orElse(),
  }) {
    if (authenticatedEvent != null) {
      return authenticatedEvent(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedEvent implements AuthenticationEvent {
  const factory AuthenticatedEvent() = _$AuthenticatedEvent;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Authenticated authenticated() {
    return const Authenticated();
  }

  UnAuthenticated unAuthenticated() {
    return const UnAuthenticated();
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthenticationState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;
}

/// @nodoc

class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthenticationState {
  const factory UnAuthenticated() = _$UnAuthenticated;
}
