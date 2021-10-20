// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Seat _$SeatFromJson(Map<String, dynamic> json) {
  return _Seat.fromJson(json);
}

/// @nodoc
class _$SeatTearOff {
  const _$SeatTearOff();

  _Seat call(
      {required int? id,
      required int? pin,
      required int? seatNumber,
      required int? tableNumber}) {
    return _Seat(
      id: id,
      pin: pin,
      seatNumber: seatNumber,
      tableNumber: tableNumber,
    );
  }

  Seat fromJson(Map<String, Object> json) {
    return Seat.fromJson(json);
  }
}

/// @nodoc
const $Seat = _$SeatTearOff();

/// @nodoc
mixin _$Seat {
  int? get id => throw _privateConstructorUsedError;
  int? get pin => throw _privateConstructorUsedError;
  int? get seatNumber => throw _privateConstructorUsedError;
  int? get tableNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatCopyWith<Seat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatCopyWith<$Res> {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) then) =
      _$SeatCopyWithImpl<$Res>;
  $Res call({int? id, int? pin, int? seatNumber, int? tableNumber});
}

/// @nodoc
class _$SeatCopyWithImpl<$Res> implements $SeatCopyWith<$Res> {
  _$SeatCopyWithImpl(this._value, this._then);

  final Seat _value;
  // ignore: unused_field
  final $Res Function(Seat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pin = freezed,
    Object? seatNumber = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int?,
      seatNumber: seatNumber == freezed
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      tableNumber: tableNumber == freezed
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SeatCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$SeatCopyWith(_Seat value, $Res Function(_Seat) then) =
      __$SeatCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int? pin, int? seatNumber, int? tableNumber});
}

/// @nodoc
class __$SeatCopyWithImpl<$Res> extends _$SeatCopyWithImpl<$Res>
    implements _$SeatCopyWith<$Res> {
  __$SeatCopyWithImpl(_Seat _value, $Res Function(_Seat) _then)
      : super(_value, (v) => _then(v as _Seat));

  @override
  _Seat get _value => super._value as _Seat;

  @override
  $Res call({
    Object? id = freezed,
    Object? pin = freezed,
    Object? seatNumber = freezed,
    Object? tableNumber = freezed,
  }) {
    return _then(_Seat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as int?,
      seatNumber: seatNumber == freezed
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      tableNumber: tableNumber == freezed
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Seat implements _Seat {
  const _$_Seat(
      {required this.id,
      required this.pin,
      required this.seatNumber,
      required this.tableNumber});

  factory _$_Seat.fromJson(Map<String, dynamic> json) =>
      _$_$_SeatFromJson(json);

  @override
  final int? id;
  @override
  final int? pin;
  @override
  final int? seatNumber;
  @override
  final int? tableNumber;

  @override
  String toString() {
    return 'Seat(id: $id, pin: $pin, seatNumber: $seatNumber, tableNumber: $tableNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Seat &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.seatNumber, seatNumber) ||
                const DeepCollectionEquality()
                    .equals(other.seatNumber, seatNumber)) &&
            (identical(other.tableNumber, tableNumber) ||
                const DeepCollectionEquality()
                    .equals(other.tableNumber, tableNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(seatNumber) ^
      const DeepCollectionEquality().hash(tableNumber);

  @JsonKey(ignore: true)
  @override
  _$SeatCopyWith<_Seat> get copyWith =>
      __$SeatCopyWithImpl<_Seat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SeatToJson(this);
  }
}

abstract class _Seat implements Seat {
  const factory _Seat(
      {required int? id,
      required int? pin,
      required int? seatNumber,
      required int? tableNumber}) = _$_Seat;

  factory _Seat.fromJson(Map<String, dynamic> json) = _$_Seat.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get pin => throw _privateConstructorUsedError;
  @override
  int? get seatNumber => throw _privateConstructorUsedError;
  @override
  int? get tableNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SeatCopyWith<_Seat> get copyWith => throw _privateConstructorUsedError;
}
