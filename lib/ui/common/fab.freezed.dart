// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    TResult? Function()? notSelected,
    TResult? Function()? selected,
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
    TResult? Function(_FabNotSelected value)? notSelected,
    TResult? Function(_FabSelected value)? selected,
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
      _$FabStateCopyWithImpl<$Res, FabState>;
}

/// @nodoc
class _$FabStateCopyWithImpl<$Res, $Val extends FabState>
    implements $FabStateCopyWith<$Res> {
  _$FabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FabNotSelectedImplCopyWith<$Res> {
  factory _$$FabNotSelectedImplCopyWith(_$FabNotSelectedImpl value,
          $Res Function(_$FabNotSelectedImpl) then) =
      __$$FabNotSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FabNotSelectedImplCopyWithImpl<$Res>
    extends _$FabStateCopyWithImpl<$Res, _$FabNotSelectedImpl>
    implements _$$FabNotSelectedImplCopyWith<$Res> {
  __$$FabNotSelectedImplCopyWithImpl(
      _$FabNotSelectedImpl _value, $Res Function(_$FabNotSelectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FabNotSelectedImpl implements _FabNotSelected {
  const _$FabNotSelectedImpl();

  @override
  String toString() {
    return 'FabState.notSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FabNotSelectedImpl);
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
    TResult? Function()? notSelected,
    TResult? Function()? selected,
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
    TResult? Function(_FabNotSelected value)? notSelected,
    TResult? Function(_FabSelected value)? selected,
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
  const factory _FabNotSelected() = _$FabNotSelectedImpl;
}

/// @nodoc
abstract class _$$FabSelectedImplCopyWith<$Res> {
  factory _$$FabSelectedImplCopyWith(
          _$FabSelectedImpl value, $Res Function(_$FabSelectedImpl) then) =
      __$$FabSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FabSelectedImplCopyWithImpl<$Res>
    extends _$FabStateCopyWithImpl<$Res, _$FabSelectedImpl>
    implements _$$FabSelectedImplCopyWith<$Res> {
  __$$FabSelectedImplCopyWithImpl(
      _$FabSelectedImpl _value, $Res Function(_$FabSelectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FabSelectedImpl implements _FabSelected {
  const _$FabSelectedImpl();

  @override
  String toString() {
    return 'FabState.selected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FabSelectedImpl);
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
    TResult? Function()? notSelected,
    TResult? Function()? selected,
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
    TResult? Function(_FabNotSelected value)? notSelected,
    TResult? Function(_FabSelected value)? selected,
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
  const factory _FabSelected() = _$FabSelectedImpl;
}
