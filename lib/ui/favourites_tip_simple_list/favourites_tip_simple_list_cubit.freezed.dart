// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_tip_simple_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesTipSimpleListBaseState {
  List<Tip> get tips => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tip> tips, int currentPage) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Tip> tips, int currentPage)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tip> tips, int currentPage)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavouritesTipsSimpleListState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavouritesTipsSimpleListState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavouritesTipsSimpleListState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesTipSimpleListBaseStateCopyWith<FavouritesTipSimpleListBaseState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesTipSimpleListBaseStateCopyWith<$Res> {
  factory $FavouritesTipSimpleListBaseStateCopyWith(
          FavouritesTipSimpleListBaseState value,
          $Res Function(FavouritesTipSimpleListBaseState) then) =
      _$FavouritesTipSimpleListBaseStateCopyWithImpl<$Res,
          FavouritesTipSimpleListBaseState>;
  @useResult
  $Res call({List<Tip> tips, int currentPage});
}

/// @nodoc
class _$FavouritesTipSimpleListBaseStateCopyWithImpl<$Res,
        $Val extends FavouritesTipSimpleListBaseState>
    implements $FavouritesTipSimpleListBaseStateCopyWith<$Res> {
  _$FavouritesTipSimpleListBaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tips = null,
    Object? currentPage = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesTipsSimpleListStateImplCopyWith<$Res>
    implements $FavouritesTipSimpleListBaseStateCopyWith<$Res> {
  factory _$$FavouritesTipsSimpleListStateImplCopyWith(
          _$FavouritesTipsSimpleListStateImpl value,
          $Res Function(_$FavouritesTipsSimpleListStateImpl) then) =
      __$$FavouritesTipsSimpleListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Tip> tips, int currentPage});
}

/// @nodoc
class __$$FavouritesTipsSimpleListStateImplCopyWithImpl<$Res>
    extends _$FavouritesTipSimpleListBaseStateCopyWithImpl<$Res,
        _$FavouritesTipsSimpleListStateImpl>
    implements _$$FavouritesTipsSimpleListStateImplCopyWith<$Res> {
  __$$FavouritesTipsSimpleListStateImplCopyWithImpl(
      _$FavouritesTipsSimpleListStateImpl _value,
      $Res Function(_$FavouritesTipsSimpleListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tips = null,
    Object? currentPage = null,
  }) {
    return _then(_$FavouritesTipsSimpleListStateImpl(
      tips: null == tips
          ? _value._tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<Tip>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FavouritesTipsSimpleListStateImpl
    implements _FavouritesTipsSimpleListState {
  const _$FavouritesTipsSimpleListStateImpl(
      {final List<Tip> tips = const [], this.currentPage = 0})
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
  String toString() {
    return 'FavouritesTipSimpleListBaseState.state(tips: $tips, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesTipsSimpleListStateImpl &&
            const DeepCollectionEquality().equals(other._tips, _tips) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tips), currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesTipsSimpleListStateImplCopyWith<
          _$FavouritesTipsSimpleListStateImpl>
      get copyWith => __$$FavouritesTipsSimpleListStateImplCopyWithImpl<
          _$FavouritesTipsSimpleListStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tip> tips, int currentPage) state,
  }) {
    return state(tips, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Tip> tips, int currentPage)? state,
  }) {
    return state?.call(tips, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tip> tips, int currentPage)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(tips, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavouritesTipsSimpleListState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavouritesTipsSimpleListState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavouritesTipsSimpleListState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _FavouritesTipsSimpleListState
    implements FavouritesTipSimpleListBaseState {
  const factory _FavouritesTipsSimpleListState(
      {final List<Tip> tips,
      final int currentPage}) = _$FavouritesTipsSimpleListStateImpl;

  @override
  List<Tip> get tips;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesTipsSimpleListStateImplCopyWith<
          _$FavouritesTipsSimpleListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
