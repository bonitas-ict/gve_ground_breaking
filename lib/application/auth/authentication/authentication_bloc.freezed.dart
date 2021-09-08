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

  VerifiedStateEvent verifiedState() {
    return const VerifiedStateEvent();
  }

  SwitchAppState switchAppState(AppState appState) {
    return SwitchAppState(
      appState,
    );
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verifiedState,
    required TResult Function(AppState appState) switchAppState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verifiedState,
    TResult Function(AppState appState)? switchAppState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifiedStateEvent value) verifiedState,
    required TResult Function(SwitchAppState value) switchAppState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifiedStateEvent value)? verifiedState,
    TResult Function(SwitchAppState value)? switchAppState,
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
abstract class $VerifiedStateEventCopyWith<$Res> {
  factory $VerifiedStateEventCopyWith(
          VerifiedStateEvent value, $Res Function(VerifiedStateEvent) then) =
      _$VerifiedStateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifiedStateEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $VerifiedStateEventCopyWith<$Res> {
  _$VerifiedStateEventCopyWithImpl(
      VerifiedStateEvent _value, $Res Function(VerifiedStateEvent) _then)
      : super(_value, (v) => _then(v as VerifiedStateEvent));

  @override
  VerifiedStateEvent get _value => super._value as VerifiedStateEvent;
}

/// @nodoc

class _$VerifiedStateEvent implements VerifiedStateEvent {
  const _$VerifiedStateEvent();

  @override
  String toString() {
    return 'AuthenticationEvent.verifiedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifiedStateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verifiedState,
    required TResult Function(AppState appState) switchAppState,
  }) {
    return verifiedState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verifiedState,
    TResult Function(AppState appState)? switchAppState,
    required TResult orElse(),
  }) {
    if (verifiedState != null) {
      return verifiedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifiedStateEvent value) verifiedState,
    required TResult Function(SwitchAppState value) switchAppState,
  }) {
    return verifiedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifiedStateEvent value)? verifiedState,
    TResult Function(SwitchAppState value)? switchAppState,
    required TResult orElse(),
  }) {
    if (verifiedState != null) {
      return verifiedState(this);
    }
    return orElse();
  }
}

abstract class VerifiedStateEvent implements AuthenticationEvent {
  const factory VerifiedStateEvent() = _$VerifiedStateEvent;
}

/// @nodoc
abstract class $SwitchAppStateCopyWith<$Res> {
  factory $SwitchAppStateCopyWith(
          SwitchAppState value, $Res Function(SwitchAppState) then) =
      _$SwitchAppStateCopyWithImpl<$Res>;
  $Res call({AppState appState});
}

/// @nodoc
class _$SwitchAppStateCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SwitchAppStateCopyWith<$Res> {
  _$SwitchAppStateCopyWithImpl(
      SwitchAppState _value, $Res Function(SwitchAppState) _then)
      : super(_value, (v) => _then(v as SwitchAppState));

  @override
  SwitchAppState get _value => super._value as SwitchAppState;

  @override
  $Res call({
    Object? appState = freezed,
  }) {
    return _then(SwitchAppState(
      appState == freezed
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppState,
    ));
  }
}

/// @nodoc

class _$SwitchAppState implements SwitchAppState {
  const _$SwitchAppState(this.appState);

  @override
  final AppState appState;

  @override
  String toString() {
    return 'AuthenticationEvent.switchAppState(appState: $appState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SwitchAppState &&
            (identical(other.appState, appState) ||
                const DeepCollectionEquality()
                    .equals(other.appState, appState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appState);

  @JsonKey(ignore: true)
  @override
  $SwitchAppStateCopyWith<SwitchAppState> get copyWith =>
      _$SwitchAppStateCopyWithImpl<SwitchAppState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verifiedState,
    required TResult Function(AppState appState) switchAppState,
  }) {
    return switchAppState(appState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verifiedState,
    TResult Function(AppState appState)? switchAppState,
    required TResult orElse(),
  }) {
    if (switchAppState != null) {
      return switchAppState(appState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifiedStateEvent value) verifiedState,
    required TResult Function(SwitchAppState value) switchAppState,
  }) {
    return switchAppState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifiedStateEvent value)? verifiedState,
    TResult Function(SwitchAppState value)? switchAppState,
    required TResult orElse(),
  }) {
    if (switchAppState != null) {
      return switchAppState(this);
    }
    return orElse();
  }
}

abstract class SwitchAppState implements AuthenticationEvent {
  const factory SwitchAppState(AppState appState) = _$SwitchAppState;

  AppState get appState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwitchAppStateCopyWith<SwitchAppState> get copyWith =>
      throw _privateConstructorUsedError;
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

  PartialAuthentication partialAuthentication() {
    return const PartialAuthentication();
  }

  FirstRun firstRun() {
    return const FirstRun();
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
    required TResult Function() partialAuthentication,
    required TResult Function() firstRun,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? partialAuthentication,
    TResult Function()? firstRun,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(PartialAuthentication value)
        partialAuthentication,
    required TResult Function(FirstRun value) firstRun,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(PartialAuthentication value)? partialAuthentication,
    TResult Function(FirstRun value)? firstRun,
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
    required TResult Function() partialAuthentication,
    required TResult Function() firstRun,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? partialAuthentication,
    TResult Function()? firstRun,
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
    required TResult Function(PartialAuthentication value)
        partialAuthentication,
    required TResult Function(FirstRun value) firstRun,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(PartialAuthentication value)? partialAuthentication,
    TResult Function(FirstRun value)? firstRun,
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
    required TResult Function() partialAuthentication,
    required TResult Function() firstRun,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? partialAuthentication,
    TResult Function()? firstRun,
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
    required TResult Function(PartialAuthentication value)
        partialAuthentication,
    required TResult Function(FirstRun value) firstRun,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(PartialAuthentication value)? partialAuthentication,
    TResult Function(FirstRun value)? firstRun,
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
    required TResult Function() partialAuthentication,
    required TResult Function() firstRun,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? partialAuthentication,
    TResult Function()? firstRun,
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
    required TResult Function(PartialAuthentication value)
        partialAuthentication,
    required TResult Function(FirstRun value) firstRun,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(PartialAuthentication value)? partialAuthentication,
    TResult Function(FirstRun value)? firstRun,
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

/// @nodoc
abstract class $PartialAuthenticationCopyWith<$Res> {
  factory $PartialAuthenticationCopyWith(PartialAuthentication value,
          $Res Function(PartialAuthentication) then) =
      _$PartialAuthenticationCopyWithImpl<$Res>;
}

/// @nodoc
class _$PartialAuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $PartialAuthenticationCopyWith<$Res> {
  _$PartialAuthenticationCopyWithImpl(
      PartialAuthentication _value, $Res Function(PartialAuthentication) _then)
      : super(_value, (v) => _then(v as PartialAuthentication));

  @override
  PartialAuthentication get _value => super._value as PartialAuthentication;
}

/// @nodoc

class _$PartialAuthentication implements PartialAuthentication {
  const _$PartialAuthentication();

  @override
  String toString() {
    return 'AuthenticationState.partialAuthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PartialAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() partialAuthentication,
    required TResult Function() firstRun,
  }) {
    return partialAuthentication();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? partialAuthentication,
    TResult Function()? firstRun,
    required TResult orElse(),
  }) {
    if (partialAuthentication != null) {
      return partialAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(PartialAuthentication value)
        partialAuthentication,
    required TResult Function(FirstRun value) firstRun,
  }) {
    return partialAuthentication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(PartialAuthentication value)? partialAuthentication,
    TResult Function(FirstRun value)? firstRun,
    required TResult orElse(),
  }) {
    if (partialAuthentication != null) {
      return partialAuthentication(this);
    }
    return orElse();
  }
}

abstract class PartialAuthentication implements AuthenticationState {
  const factory PartialAuthentication() = _$PartialAuthentication;
}

/// @nodoc
abstract class $FirstRunCopyWith<$Res> {
  factory $FirstRunCopyWith(FirstRun value, $Res Function(FirstRun) then) =
      _$FirstRunCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirstRunCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements $FirstRunCopyWith<$Res> {
  _$FirstRunCopyWithImpl(FirstRun _value, $Res Function(FirstRun) _then)
      : super(_value, (v) => _then(v as FirstRun));

  @override
  FirstRun get _value => super._value as FirstRun;
}

/// @nodoc

class _$FirstRun implements FirstRun {
  const _$FirstRun();

  @override
  String toString() {
    return 'AuthenticationState.firstRun()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FirstRun);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() partialAuthentication,
    required TResult Function() firstRun,
  }) {
    return firstRun();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? partialAuthentication,
    TResult Function()? firstRun,
    required TResult orElse(),
  }) {
    if (firstRun != null) {
      return firstRun();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unAuthenticated,
    required TResult Function(PartialAuthentication value)
        partialAuthentication,
    required TResult Function(FirstRun value) firstRun,
  }) {
    return firstRun(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unAuthenticated,
    TResult Function(PartialAuthentication value)? partialAuthentication,
    TResult Function(FirstRun value)? firstRun,
    required TResult orElse(),
  }) {
    if (firstRun != null) {
      return firstRun(this);
    }
    return orElse();
  }
}

abstract class FirstRun implements AuthenticationState {
  const factory FirstRun() = _$FirstRun;
}
