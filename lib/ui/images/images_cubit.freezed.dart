// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'images_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImagesBaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagesState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImagesState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagesState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesBaseStateCopyWith<$Res> {
  factory $ImagesBaseStateCopyWith(
          ImagesBaseState value, $Res Function(ImagesBaseState) then) =
      _$ImagesBaseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImagesBaseStateCopyWithImpl<$Res>
    implements $ImagesBaseStateCopyWith<$Res> {
  _$ImagesBaseStateCopyWithImpl(this._value, this._then);

  final ImagesBaseState _value;
  // ignore: unused_field
  final $Res Function(ImagesBaseState) _then;
}

/// @nodoc
abstract class _$$ImagesStateCopyWith<$Res> {
  factory _$$ImagesStateCopyWith(
          _$ImagesState value, $Res Function(_$ImagesState) then) =
      __$$ImagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImagesStateCopyWithImpl<$Res>
    extends _$ImagesBaseStateCopyWithImpl<$Res>
    implements _$$ImagesStateCopyWith<$Res> {
  __$$ImagesStateCopyWithImpl(
      _$ImagesState _value, $Res Function(_$ImagesState) _then)
      : super(_value, (v) => _then(v as _$ImagesState));

  @override
  _$ImagesState get _value => super._value as _$ImagesState;
}

/// @nodoc

class _$ImagesState implements ImagesState {
  const _$ImagesState();

  @override
  String toString() {
    return 'ImagesBaseState.state()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImagesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() state,
  }) {
    return state();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? state,
  }) {
    return state?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImagesState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ImagesState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImagesState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class ImagesState implements ImagesBaseState {
  const factory ImagesState() = _$ImagesState;
}
