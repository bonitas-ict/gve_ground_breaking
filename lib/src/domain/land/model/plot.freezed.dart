// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Plot _$PlotFromJson(Map<String, dynamic> json) {
  return _Plot.fromJson(json);
}

/// @nodoc
class _$PlotTearOff {
  const _$PlotTearOff();

  _Plot call(
      {required int id,
      required num size,
      required double price,
      required String unit,
      required String plotId,
      required String thumbnailUrl}) {
    return _Plot(
      id: id,
      size: size,
      price: price,
      unit: unit,
      plotId: plotId,
      thumbnailUrl: thumbnailUrl,
    );
  }

  Plot fromJson(Map<String, Object> json) {
    return Plot.fromJson(json);
  }
}

/// @nodoc
const $Plot = _$PlotTearOff();

/// @nodoc
mixin _$Plot {
  int get id => throw _privateConstructorUsedError;
  num get size => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get plotId => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlotCopyWith<Plot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlotCopyWith<$Res> {
  factory $PlotCopyWith(Plot value, $Res Function(Plot) then) =
      _$PlotCopyWithImpl<$Res>;
  $Res call(
      {int id,
      num size,
      double price,
      String unit,
      String plotId,
      String thumbnailUrl});
}

/// @nodoc
class _$PlotCopyWithImpl<$Res> implements $PlotCopyWith<$Res> {
  _$PlotCopyWithImpl(this._value, this._then);

  final Plot _value;
  // ignore: unused_field
  final $Res Function(Plot) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? size = freezed,
    Object? price = freezed,
    Object? unit = freezed,
    Object? plotId = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as num,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      plotId: plotId == freezed
          ? _value.plotId
          : plotId // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlotCopyWith<$Res> implements $PlotCopyWith<$Res> {
  factory _$PlotCopyWith(_Plot value, $Res Function(_Plot) then) =
      __$PlotCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      num size,
      double price,
      String unit,
      String plotId,
      String thumbnailUrl});
}

/// @nodoc
class __$PlotCopyWithImpl<$Res> extends _$PlotCopyWithImpl<$Res>
    implements _$PlotCopyWith<$Res> {
  __$PlotCopyWithImpl(_Plot _value, $Res Function(_Plot) _then)
      : super(_value, (v) => _then(v as _Plot));

  @override
  _Plot get _value => super._value as _Plot;

  @override
  $Res call({
    Object? id = freezed,
    Object? size = freezed,
    Object? price = freezed,
    Object? unit = freezed,
    Object? plotId = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_Plot(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as num,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      plotId: plotId == freezed
          ? _value.plotId
          : plotId // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Plot with DiagnosticableTreeMixin implements _Plot {
  const _$_Plot(
      {required this.id,
      required this.size,
      required this.price,
      required this.unit,
      required this.plotId,
      required this.thumbnailUrl});

  factory _$_Plot.fromJson(Map<String, dynamic> json) =>
      _$_$_PlotFromJson(json);

  @override
  final int id;
  @override
  final num size;
  @override
  final double price;
  @override
  final String unit;
  @override
  final String plotId;
  @override
  final String thumbnailUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Plot(id: $id, size: $size, price: $price, unit: $unit, plotId: $plotId, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Plot'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('unit', unit))
      ..add(DiagnosticsProperty('plotId', plotId))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Plot &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.plotId, plotId) ||
                const DeepCollectionEquality().equals(other.plotId, plotId)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(plotId) ^
      const DeepCollectionEquality().hash(thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  _$PlotCopyWith<_Plot> get copyWith =>
      __$PlotCopyWithImpl<_Plot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlotToJson(this);
  }
}

abstract class _Plot implements Plot {
  const factory _Plot(
      {required int id,
      required num size,
      required double price,
      required String unit,
      required String plotId,
      required String thumbnailUrl}) = _$_Plot;

  factory _Plot.fromJson(Map<String, dynamic> json) = _$_Plot.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  num get size => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get unit => throw _privateConstructorUsedError;
  @override
  String get plotId => throw _privateConstructorUsedError;
  @override
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlotCopyWith<_Plot> get copyWith => throw _privateConstructorUsedError;
}
