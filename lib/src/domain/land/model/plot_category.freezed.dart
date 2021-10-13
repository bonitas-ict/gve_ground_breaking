// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'plot_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlotCategory _$PlotCategoryFromJson(Map<String, dynamic> json) {
  return _PlotCategory.fromJson(json);
}

/// @nodoc
class _$PlotCategoryTearOff {
  const _$PlotCategoryTearOff();

  _PlotCategory call(
      {required String categoryName,
      required String description,
      required List<Plot> Properties}) {
    return _PlotCategory(
      categoryName: categoryName,
      description: description,
      Properties: Properties,
    );
  }

  PlotCategory fromJson(Map<String, Object> json) {
    return PlotCategory.fromJson(json);
  }
}

/// @nodoc
const $PlotCategory = _$PlotCategoryTearOff();

/// @nodoc
mixin _$PlotCategory {
  String get categoryName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Plot> get Properties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlotCategoryCopyWith<PlotCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlotCategoryCopyWith<$Res> {
  factory $PlotCategoryCopyWith(
          PlotCategory value, $Res Function(PlotCategory) then) =
      _$PlotCategoryCopyWithImpl<$Res>;
  $Res call({String categoryName, String description, List<Plot> Properties});
}

/// @nodoc
class _$PlotCategoryCopyWithImpl<$Res> implements $PlotCategoryCopyWith<$Res> {
  _$PlotCategoryCopyWithImpl(this._value, this._then);

  final PlotCategory _value;
  // ignore: unused_field
  final $Res Function(PlotCategory) _then;

  @override
  $Res call({
    Object? categoryName = freezed,
    Object? description = freezed,
    Object? Properties = freezed,
  }) {
    return _then(_value.copyWith(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      Properties: Properties == freezed
          ? _value.Properties
          : Properties // ignore: cast_nullable_to_non_nullable
              as List<Plot>,
    ));
  }
}

/// @nodoc
abstract class _$PlotCategoryCopyWith<$Res>
    implements $PlotCategoryCopyWith<$Res> {
  factory _$PlotCategoryCopyWith(
          _PlotCategory value, $Res Function(_PlotCategory) then) =
      __$PlotCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String categoryName, String description, List<Plot> Properties});
}

/// @nodoc
class __$PlotCategoryCopyWithImpl<$Res> extends _$PlotCategoryCopyWithImpl<$Res>
    implements _$PlotCategoryCopyWith<$Res> {
  __$PlotCategoryCopyWithImpl(
      _PlotCategory _value, $Res Function(_PlotCategory) _then)
      : super(_value, (v) => _then(v as _PlotCategory));

  @override
  _PlotCategory get _value => super._value as _PlotCategory;

  @override
  $Res call({
    Object? categoryName = freezed,
    Object? description = freezed,
    Object? Properties = freezed,
  }) {
    return _then(_PlotCategory(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      Properties: Properties == freezed
          ? _value.Properties
          : Properties // ignore: cast_nullable_to_non_nullable
              as List<Plot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlotCategory with DiagnosticableTreeMixin implements _PlotCategory {
  const _$_PlotCategory(
      {required this.categoryName,
      required this.description,
      required this.Properties});

  factory _$_PlotCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_PlotCategoryFromJson(json);

  @override
  final String categoryName;
  @override
  final String description;
  @override
  final List<Plot> Properties;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlotCategory(categoryName: $categoryName, description: $description, Properties: $Properties)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlotCategory'))
      ..add(DiagnosticsProperty('categoryName', categoryName))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('Properties', Properties));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlotCategory &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.Properties, Properties) ||
                const DeepCollectionEquality()
                    .equals(other.Properties, Properties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(Properties);

  @JsonKey(ignore: true)
  @override
  _$PlotCategoryCopyWith<_PlotCategory> get copyWith =>
      __$PlotCategoryCopyWithImpl<_PlotCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlotCategoryToJson(this);
  }
}

abstract class _PlotCategory implements PlotCategory {
  const factory _PlotCategory(
      {required String categoryName,
      required String description,
      required List<Plot> Properties}) = _$_PlotCategory;

  factory _PlotCategory.fromJson(Map<String, dynamic> json) =
      _$_PlotCategory.fromJson;

  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  List<Plot> get Properties => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlotCategoryCopyWith<_PlotCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
