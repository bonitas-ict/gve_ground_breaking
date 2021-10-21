// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pay_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayHistory _$PayHistoryFromJson(Map<String, dynamic> json) {
  return _PayHistory.fromJson(json);
}

/// @nodoc
class _$PayHistoryTearOff {
  const _$PayHistoryTearOff();

  _PayHistory call(
      {required String plotId,
      required String date,
      required String amount,
      required bool stauts}) {
    return _PayHistory(
      plotId: plotId,
      date: date,
      amount: amount,
      stauts: stauts,
    );
  }

  PayHistory fromJson(Map<String, Object> json) {
    return PayHistory.fromJson(json);
  }
}

/// @nodoc
const $PayHistory = _$PayHistoryTearOff();

/// @nodoc
mixin _$PayHistory {
  String get plotId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  bool get stauts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayHistoryCopyWith<PayHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayHistoryCopyWith<$Res> {
  factory $PayHistoryCopyWith(
          PayHistory value, $Res Function(PayHistory) then) =
      _$PayHistoryCopyWithImpl<$Res>;
  $Res call({String plotId, String date, String amount, bool stauts});
}

/// @nodoc
class _$PayHistoryCopyWithImpl<$Res> implements $PayHistoryCopyWith<$Res> {
  _$PayHistoryCopyWithImpl(this._value, this._then);

  final PayHistory _value;
  // ignore: unused_field
  final $Res Function(PayHistory) _then;

  @override
  $Res call({
    Object? plotId = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? stauts = freezed,
  }) {
    return _then(_value.copyWith(
      plotId: plotId == freezed
          ? _value.plotId
          : plotId // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      stauts: stauts == freezed
          ? _value.stauts
          : stauts // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PayHistoryCopyWith<$Res> implements $PayHistoryCopyWith<$Res> {
  factory _$PayHistoryCopyWith(
          _PayHistory value, $Res Function(_PayHistory) then) =
      __$PayHistoryCopyWithImpl<$Res>;
  @override
  $Res call({String plotId, String date, String amount, bool stauts});
}

/// @nodoc
class __$PayHistoryCopyWithImpl<$Res> extends _$PayHistoryCopyWithImpl<$Res>
    implements _$PayHistoryCopyWith<$Res> {
  __$PayHistoryCopyWithImpl(
      _PayHistory _value, $Res Function(_PayHistory) _then)
      : super(_value, (v) => _then(v as _PayHistory));

  @override
  _PayHistory get _value => super._value as _PayHistory;

  @override
  $Res call({
    Object? plotId = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? stauts = freezed,
  }) {
    return _then(_PayHistory(
      plotId: plotId == freezed
          ? _value.plotId
          : plotId // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      stauts: stauts == freezed
          ? _value.stauts
          : stauts // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PayHistory implements _PayHistory {
  const _$_PayHistory(
      {required this.plotId,
      required this.date,
      required this.amount,
      required this.stauts});

  factory _$_PayHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_PayHistoryFromJson(json);

  @override
  final String plotId;
  @override
  final String date;
  @override
  final String amount;
  @override
  final bool stauts;

  @override
  String toString() {
    return 'PayHistory(plotId: $plotId, date: $date, amount: $amount, stauts: $stauts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PayHistory &&
            (identical(other.plotId, plotId) ||
                const DeepCollectionEquality().equals(other.plotId, plotId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.stauts, stauts) ||
                const DeepCollectionEquality().equals(other.stauts, stauts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(plotId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(stauts);

  @JsonKey(ignore: true)
  @override
  _$PayHistoryCopyWith<_PayHistory> get copyWith =>
      __$PayHistoryCopyWithImpl<_PayHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PayHistoryToJson(this);
  }
}

abstract class _PayHistory implements PayHistory {
  const factory _PayHistory(
      {required String plotId,
      required String date,
      required String amount,
      required bool stauts}) = _$_PayHistory;

  factory _PayHistory.fromJson(Map<String, dynamic> json) =
      _$_PayHistory.fromJson;

  @override
  String get plotId => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  bool get stauts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PayHistoryCopyWith<_PayHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
