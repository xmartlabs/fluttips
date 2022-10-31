// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FabState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSelected,
    required TResult Function() selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function()? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function()? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FabNotSelected value) notSelected,
    required TResult Function(_FabSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FabNotSelected value)? notSelected,
    TResult Function(_FabSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FabNotSelected value)? notSelected,
    TResult Function(_FabSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FabStateCopyWith<$Res> {
  factory $FabStateCopyWith(FabState value, $Res Function(FabState) then) =
      _$FabStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FabStateCopyWithImpl<$Res> implements $FabStateCopyWith<$Res> {
  _$FabStateCopyWithImpl(this._value, this._then);

  final FabState _value;
  // ignore: unused_field
  final $Res Function(FabState) _then;
}

/// @nodoc
abstract class _$$_FabNotSelectedCopyWith<$Res> {
  factory _$$_FabNotSelectedCopyWith(
          _$_FabNotSelected value, $Res Function(_$_FabNotSelected) then) =
      __$$_FabNotSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FabNotSelectedCopyWithImpl<$Res> extends _$FabStateCopyWithImpl<$Res>
    implements _$$_FabNotSelectedCopyWith<$Res> {
  __$$_FabNotSelectedCopyWithImpl(
      _$_FabNotSelected _value, $Res Function(_$_FabNotSelected) _then)
      : super(_value, (v) => _then(v as _$_FabNotSelected));

  @override
  _$_FabNotSelected get _value => super._value as _$_FabNotSelected;
}

/// @nodoc

class _$_FabNotSelected implements _FabNotSelected {
  const _$_FabNotSelected();

  @override
  String toString() {
    return 'FabState.notSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FabNotSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSelected,
    required TResult Function() selected,
  }) {
    return notSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function()? selected,
  }) {
    return notSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function()? selected,
    required TResult orElse(),
  }) {
    if (notSelected != null) {
      return notSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FabNotSelected value) notSelected,
    required TResult Function(_FabSelected value) selected,
  }) {
    return notSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FabNotSelected value)? notSelected,
    TResult Function(_FabSelected value)? selected,
  }) {
    return notSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FabNotSelected value)? notSelected,
    TResult Function(_FabSelected value)? selected,
    required TResult orElse(),
  }) {
    if (notSelected != null) {
      return notSelected(this);
    }
    return orElse();
  }
}

abstract class _FabNotSelected implements FabState {
  const factory _FabNotSelected() = _$_FabNotSelected;
}

/// @nodoc
abstract class _$$_FabSelectedCopyWith<$Res> {
  factory _$$_FabSelectedCopyWith(
          _$_FabSelected value, $Res Function(_$_FabSelected) then) =
      __$$_FabSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FabSelectedCopyWithImpl<$Res> extends _$FabStateCopyWithImpl<$Res>
    implements _$$_FabSelectedCopyWith<$Res> {
  __$$_FabSelectedCopyWithImpl(
      _$_FabSelected _value, $Res Function(_$_FabSelected) _then)
      : super(_value, (v) => _then(v as _$_FabSelected));

  @override
  _$_FabSelected get _value => super._value as _$_FabSelected;
}

/// @nodoc

class _$_FabSelected implements _FabSelected {
  const _$_FabSelected();

  @override
  String toString() {
    return 'FabState.selected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FabSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSelected,
    required TResult Function() selected,
  }) {
    return selected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function()? selected,
  }) {
    return selected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSelected,
    TResult Function()? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FabNotSelected value) notSelected,
    required TResult Function(_FabSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FabNotSelected value)? notSelected,
    TResult Function(_FabSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FabNotSelected value)? notSelected,
    TResult Function(_FabSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _FabSelected implements FabState {
  const factory _FabSelected() = _$_FabSelected;
}
