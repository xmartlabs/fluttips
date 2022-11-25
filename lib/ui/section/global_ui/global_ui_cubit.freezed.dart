// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'global_ui_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GlobalUIState {
  bool get showUIActionComponent => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showUIActionComponent) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showUIActionComponent)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showUIActionComponent)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalUIState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GlobalUIState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalUIState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalUIStateCopyWith<GlobalUIState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalUIStateCopyWith<$Res> {
  factory $GlobalUIStateCopyWith(
          GlobalUIState value, $Res Function(GlobalUIState) then) =
      _$GlobalUIStateCopyWithImpl<$Res, GlobalUIState>;
  @useResult
  $Res call({bool showUIActionComponent});
}

/// @nodoc
class _$GlobalUIStateCopyWithImpl<$Res, $Val extends GlobalUIState>
    implements $GlobalUIStateCopyWith<$Res> {
  _$GlobalUIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showUIActionComponent = null,
  }) {
    return _then(_value.copyWith(
      showUIActionComponent: null == showUIActionComponent
          ? _value.showUIActionComponent
          : showUIActionComponent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GlobalUIStateCopyWith<$Res>
    implements $GlobalUIStateCopyWith<$Res> {
  factory _$$_GlobalUIStateCopyWith(
          _$_GlobalUIState value, $Res Function(_$_GlobalUIState) then) =
      __$$_GlobalUIStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showUIActionComponent});
}

/// @nodoc
class __$$_GlobalUIStateCopyWithImpl<$Res>
    extends _$GlobalUIStateCopyWithImpl<$Res, _$_GlobalUIState>
    implements _$$_GlobalUIStateCopyWith<$Res> {
  __$$_GlobalUIStateCopyWithImpl(
      _$_GlobalUIState _value, $Res Function(_$_GlobalUIState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showUIActionComponent = null,
  }) {
    return _then(_$_GlobalUIState(
      showUIActionComponent: null == showUIActionComponent
          ? _value.showUIActionComponent
          : showUIActionComponent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GlobalUIState implements _GlobalUIState {
  const _$_GlobalUIState({this.showUIActionComponent = true});

  @override
  @JsonKey()
  final bool showUIActionComponent;

  @override
  String toString() {
    return 'GlobalUIState.state(showUIActionComponent: $showUIActionComponent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GlobalUIState &&
            (identical(other.showUIActionComponent, showUIActionComponent) ||
                other.showUIActionComponent == showUIActionComponent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showUIActionComponent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlobalUIStateCopyWith<_$_GlobalUIState> get copyWith =>
      __$$_GlobalUIStateCopyWithImpl<_$_GlobalUIState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showUIActionComponent) state,
  }) {
    return state(showUIActionComponent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showUIActionComponent)? state,
  }) {
    return state?.call(showUIActionComponent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showUIActionComponent)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(showUIActionComponent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalUIState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GlobalUIState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalUIState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _GlobalUIState implements GlobalUIState {
  const factory _GlobalUIState({final bool showUIActionComponent}) =
      _$_GlobalUIState;

  @override
  bool get showUIActionComponent;
  @override
  @JsonKey(ignore: true)
  _$$_GlobalUIStateCopyWith<_$_GlobalUIState> get copyWith =>
      throw _privateConstructorUsedError;
}
