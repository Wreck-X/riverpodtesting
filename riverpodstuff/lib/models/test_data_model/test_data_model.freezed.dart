// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestDataModels _$TestDataModelsFromJson(Map<String, dynamic> json) {
  return _TestDataModels.fromJson(json);
}

/// @nodoc
mixin _$TestDataModels {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestDataModelsCopyWith<TestDataModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestDataModelsCopyWith<$Res> {
  factory $TestDataModelsCopyWith(
          TestDataModels value, $Res Function(TestDataModels) then) =
      _$TestDataModelsCopyWithImpl<$Res, TestDataModels>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$TestDataModelsCopyWithImpl<$Res, $Val extends TestDataModels>
    implements $TestDataModelsCopyWith<$Res> {
  _$TestDataModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestDataModelsImplCopyWith<$Res>
    implements $TestDataModelsCopyWith<$Res> {
  factory _$$TestDataModelsImplCopyWith(_$TestDataModelsImpl value,
          $Res Function(_$TestDataModelsImpl) then) =
      __$$TestDataModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$TestDataModelsImplCopyWithImpl<$Res>
    extends _$TestDataModelsCopyWithImpl<$Res, _$TestDataModelsImpl>
    implements _$$TestDataModelsImplCopyWith<$Res> {
  __$$TestDataModelsImplCopyWithImpl(
      _$TestDataModelsImpl _value, $Res Function(_$TestDataModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$TestDataModelsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestDataModelsImpl implements _TestDataModels {
  _$TestDataModelsImpl({required this.name, required this.description});

  factory _$TestDataModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestDataModelsImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'TestDataModels(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestDataModelsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestDataModelsImplCopyWith<_$TestDataModelsImpl> get copyWith =>
      __$$TestDataModelsImplCopyWithImpl<_$TestDataModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestDataModelsImplToJson(
      this,
    );
  }
}

abstract class _TestDataModels implements TestDataModels {
  factory _TestDataModels(
      {required final String name,
      required final String description}) = _$TestDataModelsImpl;

  factory _TestDataModels.fromJson(Map<String, dynamic> json) =
      _$TestDataModelsImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$TestDataModelsImplCopyWith<_$TestDataModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
