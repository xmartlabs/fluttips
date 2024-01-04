// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeBaseState {
  bool get hideFabMenu => throw _privateConstructorUsedError;
  bool get hideFavouriteFab => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hideFabMenu, bool hideFavouriteFab) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hideFabMenu, bool hideFavouriteFab)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hideFabMenu, bool hideFavouriteFab)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBaseStateCopyWith<HomeBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBaseStateCopyWith<$Res> {
  factory $HomeBaseStateCopyWith(
          HomeBaseState value, $Res Function(HomeBaseState) then) =
      _$HomeBaseStateCopyWithImpl<$Res, HomeBaseState>;
  @useResult
  $Res call({bool hideFabMenu, bool hideFavouriteFab});
}

/// @nodoc
class _$HomeBaseStateCopyWithImpl<$Res, $Val extends HomeBaseState>
    implements $HomeBaseStateCopyWith<$Res> {
  _$HomeBaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hideFabMenu = null,
    Object? hideFavouriteFab = null,
  }) {
    return _then(_value.copyWith(
      hideFabMenu: null == hideFabMenu
          ? _value.hideFabMenu
          : hideFabMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      hideFavouriteFab: null == hideFavouriteFab
          ? _value.hideFavouriteFab
          : hideFavouriteFab // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeBaseStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hideFabMenu, bool hideFavouriteFab});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeBaseStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hideFabMenu = null,
    Object? hideFavouriteFab = null,
  }) {
    return _then(_$HomeStateImpl(
      hideFabMenu: null == hideFabMenu
          ? _value.hideFabMenu
          : hideFabMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      hideFavouriteFab: null == hideFavouriteFab
          ? _value.hideFavouriteFab
          : hideFavouriteFab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.hideFabMenu = false, this.hideFavouriteFab = false});

  @override
  @JsonKey()
  final bool hideFabMenu;
  @override
  @JsonKey()
  final bool hideFavouriteFab;

  @override
  String toString() {
    return 'HomeBaseState.state(hideFabMenu: $hideFabMenu, hideFavouriteFab: $hideFavouriteFab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.hideFabMenu, hideFabMenu) ||
                other.hideFabMenu == hideFabMenu) &&
            (identical(other.hideFavouriteFab, hideFavouriteFab) ||
                other.hideFavouriteFab == hideFavouriteFab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hideFabMenu, hideFavouriteFab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hideFabMenu, bool hideFavouriteFab) state,
  }) {
    return state(hideFabMenu, hideFavouriteFab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hideFabMenu, bool hideFavouriteFab)? state,
  }) {
    return state?.call(hideFabMenu, hideFavouriteFab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hideFabMenu, bool hideFavouriteFab)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(hideFabMenu, hideFavouriteFab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _HomeState implements HomeBaseState {
  const factory _HomeState(
      {final bool hideFabMenu, final bool hideFavouriteFab}) = _$HomeStateImpl;

  @override
  bool get hideFabMenu;
  @override
  bool get hideFavouriteFab;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
