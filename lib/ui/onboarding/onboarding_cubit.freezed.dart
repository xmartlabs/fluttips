// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingBaseState {
  OnboardingStep get onboardingStep => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnboardingStep onboardingStep) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OnboardingStep onboardingStep)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnboardingStep onboardingStep)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnboardingState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnboardingState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnboardingState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingBaseStateCopyWith<OnboardingBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingBaseStateCopyWith<$Res> {
  factory $OnboardingBaseStateCopyWith(
          OnboardingBaseState value, $Res Function(OnboardingBaseState) then) =
      _$OnboardingBaseStateCopyWithImpl<$Res, OnboardingBaseState>;
  @useResult
  $Res call({OnboardingStep onboardingStep});
}

/// @nodoc
class _$OnboardingBaseStateCopyWithImpl<$Res, $Val extends OnboardingBaseState>
    implements $OnboardingBaseStateCopyWith<$Res> {
  _$OnboardingBaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingStep = null,
  }) {
    return _then(_value.copyWith(
      onboardingStep: null == onboardingStep
          ? _value.onboardingStep
          : onboardingStep // ignore: cast_nullable_to_non_nullable
              as OnboardingStep,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingStateCopyWith<$Res>
    implements $OnboardingBaseStateCopyWith<$Res> {
  factory _$$_OnboardingStateCopyWith(
          _$_OnboardingState value, $Res Function(_$_OnboardingState) then) =
      __$$_OnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OnboardingStep onboardingStep});
}

/// @nodoc
class __$$_OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingBaseStateCopyWithImpl<$Res, _$_OnboardingState>
    implements _$$_OnboardingStateCopyWith<$Res> {
  __$$_OnboardingStateCopyWithImpl(
      _$_OnboardingState _value, $Res Function(_$_OnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboardingStep = null,
  }) {
    return _then(_$_OnboardingState(
      onboardingStep: null == onboardingStep
          ? _value.onboardingStep
          : onboardingStep // ignore: cast_nullable_to_non_nullable
              as OnboardingStep,
    ));
  }
}

/// @nodoc

class _$_OnboardingState implements _OnboardingState {
  const _$_OnboardingState(
      {this.onboardingStep = OnboardingStep.onboarding_initial});

  @override
  @JsonKey()
  final OnboardingStep onboardingStep;

  @override
  String toString() {
    return 'OnboardingBaseState.state(onboardingStep: $onboardingStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingState &&
            (identical(other.onboardingStep, onboardingStep) ||
                other.onboardingStep == onboardingStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onboardingStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      __$$_OnboardingStateCopyWithImpl<_$_OnboardingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OnboardingStep onboardingStep) state,
  }) {
    return state(onboardingStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OnboardingStep onboardingStep)? state,
  }) {
    return state?.call(onboardingStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OnboardingStep onboardingStep)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(onboardingStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnboardingState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnboardingState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnboardingState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _OnboardingState implements OnboardingBaseState {
  const factory _OnboardingState({final OnboardingStep onboardingStep}) =
      _$_OnboardingState;

  @override
  OnboardingStep get onboardingStep;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}
