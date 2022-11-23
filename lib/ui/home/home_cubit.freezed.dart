// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
    TResult Function(bool hideFabMenu, bool hideFavouriteFab)? state,
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
    TResult Function(_HomeState value)? state,
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
      _$HomeBaseStateCopyWithImpl<$Res>;
  $Res call({bool hideFabMenu, bool hideFavouriteFab});
}

/// @nodoc
class _$HomeBaseStateCopyWithImpl<$Res>
    implements $HomeBaseStateCopyWith<$Res> {
  _$HomeBaseStateCopyWithImpl(this._value, this._then);

  final HomeBaseState _value;
  // ignore: unused_field
  final $Res Function(HomeBaseState) _then;

  @override
  $Res call({
    Object? hideFabMenu = freezed,
    Object? hideFavouriteFab = freezed,
  }) {
    return _then(_value.copyWith(
      hideFabMenu: hideFabMenu == freezed
          ? _value.hideFabMenu
          : hideFabMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      hideFavouriteFab: hideFavouriteFab == freezed
          ? _value.hideFavouriteFab
          : hideFavouriteFab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res>
    implements $HomeBaseStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool hideFabMenu, bool hideFavouriteFab});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeBaseStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? hideFabMenu = freezed,
    Object? hideFavouriteFab = freezed,
  }) {
    return _then(_$_HomeState(
      hideFabMenu: hideFabMenu == freezed
          ? _value.hideFabMenu
          : hideFabMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      hideFavouriteFab: hideFavouriteFab == freezed
          ? _value.hideFavouriteFab
          : hideFavouriteFab // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({this.hideFabMenu = false, this.hideFavouriteFab = false});

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other.hideFabMenu, hideFabMenu) &&
            const DeepCollectionEquality()
                .equals(other.hideFavouriteFab, hideFavouriteFab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hideFabMenu),
      const DeepCollectionEquality().hash(hideFavouriteFab));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);

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
    TResult Function(bool hideFabMenu, bool hideFavouriteFab)? state,
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
    TResult Function(_HomeState value)? state,
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
      {final bool hideFabMenu, final bool hideFavouriteFab}) = _$_HomeState;

  @override
  bool get hideFabMenu;
  @override
  bool get hideFavouriteFab;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
