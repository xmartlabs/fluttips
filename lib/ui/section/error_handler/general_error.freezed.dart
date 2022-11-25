// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'general_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeneralError {
  String get description => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  dynamic get cause => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneralErrorCopyWith<GeneralError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralErrorCopyWith<$Res> {
  factory $GeneralErrorCopyWith(
          GeneralError value, $Res Function(GeneralError) then) =
      _$GeneralErrorCopyWithImpl<$Res, GeneralError>;
  @useResult
  $Res call({String description, String? title, dynamic cause});
}

/// @nodoc
class _$GeneralErrorCopyWithImpl<$Res, $Val extends GeneralError>
    implements $GeneralErrorCopyWith<$Res> {
  _$GeneralErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? title = freezed,
    Object? cause = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cause: null == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeneralErrorCopyWith<$Res>
    implements $GeneralErrorCopyWith<$Res> {
  factory _$$_GeneralErrorCopyWith(
          _$_GeneralError value, $Res Function(_$_GeneralError) then) =
      __$$_GeneralErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String? title, dynamic cause});
}

/// @nodoc
class __$$_GeneralErrorCopyWithImpl<$Res>
    extends _$GeneralErrorCopyWithImpl<$Res, _$_GeneralError>
    implements _$$_GeneralErrorCopyWith<$Res> {
  __$$_GeneralErrorCopyWithImpl(
      _$_GeneralError _value, $Res Function(_$_GeneralError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? title = freezed,
    Object? cause = null,
  }) {
    return _then(_$_GeneralError(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cause: null == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_GeneralError implements _GeneralError {
  const _$_GeneralError({required this.description, this.title, this.cause});

  @override
  final String description;
  @override
  final String? title;
  @override
  final dynamic cause;

  @override
  String toString() {
    return 'GeneralError(description: $description, title: $title, cause: $cause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralError &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.cause, cause));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, title,
      const DeepCollectionEquality().hash(cause));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneralErrorCopyWith<_$_GeneralError> get copyWith =>
      __$$_GeneralErrorCopyWithImpl<_$_GeneralError>(this, _$identity);
}

abstract class _GeneralError implements GeneralError {
  const factory _GeneralError(
      {required final String description,
      final String? title,
      final dynamic cause}) = _$_GeneralError;

  @override
  String get description;
  @override
  String? get title;
  @override
  dynamic get cause;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralErrorCopyWith<_$_GeneralError> get copyWith =>
      throw _privateConstructorUsedError;
}
