// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tips_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TipsBaseState {
  List<Tip> get tips => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tip> tips) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Tip> tips)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tip> tips)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TipsState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TipsState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TipsState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TipsBaseStateCopyWith<TipsBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsBaseStateCopyWith<$Res> {
  factory $TipsBaseStateCopyWith(
          TipsBaseState value, $Res Function(TipsBaseState) then) =
      _$TipsBaseStateCopyWithImpl<$Res>;
  $Res call({List<Tip> tips});
}

/// @nodoc
class _$TipsBaseStateCopyWithImpl<$Res>
    implements $TipsBaseStateCopyWith<$Res> {
  _$TipsBaseStateCopyWithImpl(this._value, this._then);

  final TipsBaseState _value;
  // ignore: unused_field
  final $Res Function(TipsBaseState) _then;

  @override
  $Res call({
    Object? tips = freezed,
  }) {
    return _then(_value.copyWith(
      tips: tips == freezed
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<Tip>,
    ));
  }
}

/// @nodoc
abstract class _$$_TipsStateCopyWith<$Res>
    implements $TipsBaseStateCopyWith<$Res> {
  factory _$$_TipsStateCopyWith(
          _$_TipsState value, $Res Function(_$_TipsState) then) =
      __$$_TipsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Tip> tips});
}

/// @nodoc
class __$$_TipsStateCopyWithImpl<$Res> extends _$TipsBaseStateCopyWithImpl<$Res>
    implements _$$_TipsStateCopyWith<$Res> {
  __$$_TipsStateCopyWithImpl(
      _$_TipsState _value, $Res Function(_$_TipsState) _then)
      : super(_value, (v) => _then(v as _$_TipsState));

  @override
  _$_TipsState get _value => super._value as _$_TipsState;

  @override
  $Res call({
    Object? tips = freezed,
  }) {
    return _then(_$_TipsState(
      tips: tips == freezed
          ? _value._tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<Tip>,
    ));
  }
}

/// @nodoc

class _$_TipsState implements _TipsState {
  const _$_TipsState({required final List<Tip> tips}) : _tips = tips;

  final List<Tip> _tips;
  @override
  List<Tip> get tips {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tips);
  }

  @override
  String toString() {
    return 'TipsBaseState.state(tips: $tips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TipsState &&
            const DeepCollectionEquality().equals(other._tips, _tips));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tips));

  @JsonKey(ignore: true)
  @override
  _$$_TipsStateCopyWith<_$_TipsState> get copyWith =>
      __$$_TipsStateCopyWithImpl<_$_TipsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tip> tips) state,
  }) {
    return state(tips);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Tip> tips)? state,
  }) {
    return state?.call(tips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tip> tips)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(tips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TipsState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TipsState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TipsState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _TipsState implements TipsBaseState {
  const factory _TipsState({required final List<Tip> tips}) = _$_TipsState;

  @override
  List<Tip> get tips;
  @override
  @JsonKey(ignore: true)
  _$$_TipsStateCopyWith<_$_TipsState> get copyWith =>
      throw _privateConstructorUsedError;
}
