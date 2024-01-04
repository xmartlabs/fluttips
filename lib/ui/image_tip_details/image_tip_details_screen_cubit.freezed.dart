// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_tip_details_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TipsImageDetailsBaseState {
  List<Tip> get tips => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  Tip? get currentTip => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tip> tips, int currentPage, Tip? currentTip)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Tip> tips, int currentPage, Tip? currentTip)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tip> tips, int currentPage, Tip? currentTip)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TipsImageDetailsBaseState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TipsImageDetailsBaseState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TipsImageDetailsBaseState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TipsImageDetailsBaseStateCopyWith<TipsImageDetailsBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsImageDetailsBaseStateCopyWith<$Res> {
  factory $TipsImageDetailsBaseStateCopyWith(TipsImageDetailsBaseState value,
          $Res Function(TipsImageDetailsBaseState) then) =
      _$TipsImageDetailsBaseStateCopyWithImpl<$Res, TipsImageDetailsBaseState>;
  @useResult
  $Res call({List<Tip> tips, int currentPage, Tip? currentTip});

  $TipCopyWith<$Res>? get currentTip;
}

/// @nodoc
class _$TipsImageDetailsBaseStateCopyWithImpl<$Res,
        $Val extends TipsImageDetailsBaseState>
    implements $TipsImageDetailsBaseStateCopyWith<$Res> {
  _$TipsImageDetailsBaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tips = null,
    Object? currentPage = null,
    Object? currentTip = freezed,
  }) {
    return _then(_value.copyWith(
      tips: null == tips
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<Tip>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentTip: freezed == currentTip
          ? _value.currentTip
          : currentTip // ignore: cast_nullable_to_non_nullable
              as Tip?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TipCopyWith<$Res>? get currentTip {
    if (_value.currentTip == null) {
      return null;
    }

    return $TipCopyWith<$Res>(_value.currentTip!, (value) {
      return _then(_value.copyWith(currentTip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TipsImageDetailsBaseStateImplCopyWith<$Res>
    implements $TipsImageDetailsBaseStateCopyWith<$Res> {
  factory _$$TipsImageDetailsBaseStateImplCopyWith(
          _$TipsImageDetailsBaseStateImpl value,
          $Res Function(_$TipsImageDetailsBaseStateImpl) then) =
      __$$TipsImageDetailsBaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Tip> tips, int currentPage, Tip? currentTip});

  @override
  $TipCopyWith<$Res>? get currentTip;
}

/// @nodoc
class __$$TipsImageDetailsBaseStateImplCopyWithImpl<$Res>
    extends _$TipsImageDetailsBaseStateCopyWithImpl<$Res,
        _$TipsImageDetailsBaseStateImpl>
    implements _$$TipsImageDetailsBaseStateImplCopyWith<$Res> {
  __$$TipsImageDetailsBaseStateImplCopyWithImpl(
      _$TipsImageDetailsBaseStateImpl _value,
      $Res Function(_$TipsImageDetailsBaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tips = null,
    Object? currentPage = null,
    Object? currentTip = freezed,
  }) {
    return _then(_$TipsImageDetailsBaseStateImpl(
      tips: null == tips
          ? _value._tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<Tip>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentTip: freezed == currentTip
          ? _value.currentTip
          : currentTip // ignore: cast_nullable_to_non_nullable
              as Tip?,
    ));
  }
}

/// @nodoc

class _$TipsImageDetailsBaseStateImpl implements _TipsImageDetailsBaseState {
  const _$TipsImageDetailsBaseStateImpl(
      {final List<Tip> tips = const [], this.currentPage = 0, this.currentTip})
      : _tips = tips;

  final List<Tip> _tips;
  @override
  @JsonKey()
  List<Tip> get tips {
    if (_tips is EqualUnmodifiableListView) return _tips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tips);
  }

  @override
  @JsonKey()
  final int currentPage;
  @override
  final Tip? currentTip;

  @override
  String toString() {
    return 'TipsImageDetailsBaseState.state(tips: $tips, currentPage: $currentPage, currentTip: $currentTip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipsImageDetailsBaseStateImpl &&
            const DeepCollectionEquality().equals(other._tips, _tips) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.currentTip, currentTip) ||
                other.currentTip == currentTip));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tips), currentPage, currentTip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipsImageDetailsBaseStateImplCopyWith<_$TipsImageDetailsBaseStateImpl>
      get copyWith => __$$TipsImageDetailsBaseStateImplCopyWithImpl<
          _$TipsImageDetailsBaseStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tip> tips, int currentPage, Tip? currentTip)
        state,
  }) {
    return state(tips, currentPage, currentTip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Tip> tips, int currentPage, Tip? currentTip)? state,
  }) {
    return state?.call(tips, currentPage, currentTip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tip> tips, int currentPage, Tip? currentTip)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(tips, currentPage, currentTip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TipsImageDetailsBaseState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TipsImageDetailsBaseState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TipsImageDetailsBaseState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _TipsImageDetailsBaseState implements TipsImageDetailsBaseState {
  const factory _TipsImageDetailsBaseState(
      {final List<Tip> tips,
      final int currentPage,
      final Tip? currentTip}) = _$TipsImageDetailsBaseStateImpl;

  @override
  List<Tip> get tips;
  @override
  int get currentPage;
  @override
  Tip? get currentTip;
  @override
  @JsonKey(ignore: true)
  _$$TipsImageDetailsBaseStateImplCopyWith<_$TipsImageDetailsBaseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
