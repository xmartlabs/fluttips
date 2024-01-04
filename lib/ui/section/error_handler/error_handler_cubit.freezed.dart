// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_handler_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ErrorHandlerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Object? error, VoidCallback? retry) unknownError,
    required TResult Function(VoidCallback? retry) internetError,
    required TResult Function(
            String? title, String description, VoidCallback? retry)
        generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Object? error, VoidCallback? retry)? unknownError,
    TResult? Function(VoidCallback? retry)? internetError,
    TResult? Function(String? title, String description, VoidCallback? retry)?
        generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Object? error, VoidCallback? retry)? unknownError,
    TResult Function(VoidCallback? retry)? internetError,
    TResult Function(String? title, String description, VoidCallback? retry)?
        generalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitErrorHandlerState value) init,
    required TResult Function(_UnknownErrorHandlerState value) unknownError,
    required TResult Function(_InternetErrorHandlerState value) internetError,
    required TResult Function(_GeneralErrorHandlerState value) generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitErrorHandlerState value)? init,
    TResult? Function(_UnknownErrorHandlerState value)? unknownError,
    TResult? Function(_InternetErrorHandlerState value)? internetError,
    TResult? Function(_GeneralErrorHandlerState value)? generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitErrorHandlerState value)? init,
    TResult Function(_UnknownErrorHandlerState value)? unknownError,
    TResult Function(_InternetErrorHandlerState value)? internetError,
    TResult Function(_GeneralErrorHandlerState value)? generalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorHandlerStateCopyWith<$Res> {
  factory $ErrorHandlerStateCopyWith(
          ErrorHandlerState value, $Res Function(ErrorHandlerState) then) =
      _$ErrorHandlerStateCopyWithImpl<$Res, ErrorHandlerState>;
}

/// @nodoc
class _$ErrorHandlerStateCopyWithImpl<$Res, $Val extends ErrorHandlerState>
    implements $ErrorHandlerStateCopyWith<$Res> {
  _$ErrorHandlerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitErrorHandlerStateImplCopyWith<$Res> {
  factory _$$InitErrorHandlerStateImplCopyWith(
          _$InitErrorHandlerStateImpl value,
          $Res Function(_$InitErrorHandlerStateImpl) then) =
      __$$InitErrorHandlerStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitErrorHandlerStateImplCopyWithImpl<$Res>
    extends _$ErrorHandlerStateCopyWithImpl<$Res, _$InitErrorHandlerStateImpl>
    implements _$$InitErrorHandlerStateImplCopyWith<$Res> {
  __$$InitErrorHandlerStateImplCopyWithImpl(_$InitErrorHandlerStateImpl _value,
      $Res Function(_$InitErrorHandlerStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitErrorHandlerStateImpl
    with DiagnosticableTreeMixin
    implements _InitErrorHandlerState {
  const _$InitErrorHandlerStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ErrorHandlerState.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ErrorHandlerState.init'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitErrorHandlerStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Object? error, VoidCallback? retry) unknownError,
    required TResult Function(VoidCallback? retry) internetError,
    required TResult Function(
            String? title, String description, VoidCallback? retry)
        generalError,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Object? error, VoidCallback? retry)? unknownError,
    TResult? Function(VoidCallback? retry)? internetError,
    TResult? Function(String? title, String description, VoidCallback? retry)?
        generalError,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Object? error, VoidCallback? retry)? unknownError,
    TResult Function(VoidCallback? retry)? internetError,
    TResult Function(String? title, String description, VoidCallback? retry)?
        generalError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitErrorHandlerState value) init,
    required TResult Function(_UnknownErrorHandlerState value) unknownError,
    required TResult Function(_InternetErrorHandlerState value) internetError,
    required TResult Function(_GeneralErrorHandlerState value) generalError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitErrorHandlerState value)? init,
    TResult? Function(_UnknownErrorHandlerState value)? unknownError,
    TResult? Function(_InternetErrorHandlerState value)? internetError,
    TResult? Function(_GeneralErrorHandlerState value)? generalError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitErrorHandlerState value)? init,
    TResult Function(_UnknownErrorHandlerState value)? unknownError,
    TResult Function(_InternetErrorHandlerState value)? internetError,
    TResult Function(_GeneralErrorHandlerState value)? generalError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitErrorHandlerState implements ErrorHandlerState {
  const factory _InitErrorHandlerState() = _$InitErrorHandlerStateImpl;
}

/// @nodoc
abstract class _$$UnknownErrorHandlerStateImplCopyWith<$Res> {
  factory _$$UnknownErrorHandlerStateImplCopyWith(
          _$UnknownErrorHandlerStateImpl value,
          $Res Function(_$UnknownErrorHandlerStateImpl) then) =
      __$$UnknownErrorHandlerStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, VoidCallback? retry});
}

/// @nodoc
class __$$UnknownErrorHandlerStateImplCopyWithImpl<$Res>
    extends _$ErrorHandlerStateCopyWithImpl<$Res,
        _$UnknownErrorHandlerStateImpl>
    implements _$$UnknownErrorHandlerStateImplCopyWith<$Res> {
  __$$UnknownErrorHandlerStateImplCopyWithImpl(
      _$UnknownErrorHandlerStateImpl _value,
      $Res Function(_$UnknownErrorHandlerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? retry = freezed,
  }) {
    return _then(_$UnknownErrorHandlerStateImpl(
      freezed == error ? _value.error : error,
      freezed == retry
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$UnknownErrorHandlerStateImpl
    with DiagnosticableTreeMixin
    implements _UnknownErrorHandlerState {
  const _$UnknownErrorHandlerStateImpl(this.error, [this.retry]);

  @override
  final Object? error;
  @override
  final VoidCallback? retry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ErrorHandlerState.unknownError(error: $error, retry: $retry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ErrorHandlerState.unknownError'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('retry', retry));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorHandlerStateImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.retry, retry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(retry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorHandlerStateImplCopyWith<_$UnknownErrorHandlerStateImpl>
      get copyWith => __$$UnknownErrorHandlerStateImplCopyWithImpl<
          _$UnknownErrorHandlerStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Object? error, VoidCallback? retry) unknownError,
    required TResult Function(VoidCallback? retry) internetError,
    required TResult Function(
            String? title, String description, VoidCallback? retry)
        generalError,
  }) {
    return unknownError(error, retry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Object? error, VoidCallback? retry)? unknownError,
    TResult? Function(VoidCallback? retry)? internetError,
    TResult? Function(String? title, String description, VoidCallback? retry)?
        generalError,
  }) {
    return unknownError?.call(error, retry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Object? error, VoidCallback? retry)? unknownError,
    TResult Function(VoidCallback? retry)? internetError,
    TResult Function(String? title, String description, VoidCallback? retry)?
        generalError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(error, retry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitErrorHandlerState value) init,
    required TResult Function(_UnknownErrorHandlerState value) unknownError,
    required TResult Function(_InternetErrorHandlerState value) internetError,
    required TResult Function(_GeneralErrorHandlerState value) generalError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitErrorHandlerState value)? init,
    TResult? Function(_UnknownErrorHandlerState value)? unknownError,
    TResult? Function(_InternetErrorHandlerState value)? internetError,
    TResult? Function(_GeneralErrorHandlerState value)? generalError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitErrorHandlerState value)? init,
    TResult Function(_UnknownErrorHandlerState value)? unknownError,
    TResult Function(_InternetErrorHandlerState value)? internetError,
    TResult Function(_GeneralErrorHandlerState value)? generalError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownErrorHandlerState implements ErrorHandlerState {
  const factory _UnknownErrorHandlerState(final Object? error,
      [final VoidCallback? retry]) = _$UnknownErrorHandlerStateImpl;

  Object? get error;
  VoidCallback? get retry;
  @JsonKey(ignore: true)
  _$$UnknownErrorHandlerStateImplCopyWith<_$UnknownErrorHandlerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternetErrorHandlerStateImplCopyWith<$Res> {
  factory _$$InternetErrorHandlerStateImplCopyWith(
          _$InternetErrorHandlerStateImpl value,
          $Res Function(_$InternetErrorHandlerStateImpl) then) =
      __$$InternetErrorHandlerStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback? retry});
}

/// @nodoc
class __$$InternetErrorHandlerStateImplCopyWithImpl<$Res>
    extends _$ErrorHandlerStateCopyWithImpl<$Res,
        _$InternetErrorHandlerStateImpl>
    implements _$$InternetErrorHandlerStateImplCopyWith<$Res> {
  __$$InternetErrorHandlerStateImplCopyWithImpl(
      _$InternetErrorHandlerStateImpl _value,
      $Res Function(_$InternetErrorHandlerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retry = freezed,
  }) {
    return _then(_$InternetErrorHandlerStateImpl(
      freezed == retry
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$InternetErrorHandlerStateImpl
    with DiagnosticableTreeMixin
    implements _InternetErrorHandlerState {
  const _$InternetErrorHandlerStateImpl([this.retry]);

  @override
  final VoidCallback? retry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ErrorHandlerState.internetError(retry: $retry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ErrorHandlerState.internetError'))
      ..add(DiagnosticsProperty('retry', retry));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetErrorHandlerStateImpl &&
            const DeepCollectionEquality().equals(other.retry, retry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(retry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetErrorHandlerStateImplCopyWith<_$InternetErrorHandlerStateImpl>
      get copyWith => __$$InternetErrorHandlerStateImplCopyWithImpl<
          _$InternetErrorHandlerStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Object? error, VoidCallback? retry) unknownError,
    required TResult Function(VoidCallback? retry) internetError,
    required TResult Function(
            String? title, String description, VoidCallback? retry)
        generalError,
  }) {
    return internetError(retry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Object? error, VoidCallback? retry)? unknownError,
    TResult? Function(VoidCallback? retry)? internetError,
    TResult? Function(String? title, String description, VoidCallback? retry)?
        generalError,
  }) {
    return internetError?.call(retry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Object? error, VoidCallback? retry)? unknownError,
    TResult Function(VoidCallback? retry)? internetError,
    TResult Function(String? title, String description, VoidCallback? retry)?
        generalError,
    required TResult orElse(),
  }) {
    if (internetError != null) {
      return internetError(retry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitErrorHandlerState value) init,
    required TResult Function(_UnknownErrorHandlerState value) unknownError,
    required TResult Function(_InternetErrorHandlerState value) internetError,
    required TResult Function(_GeneralErrorHandlerState value) generalError,
  }) {
    return internetError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitErrorHandlerState value)? init,
    TResult? Function(_UnknownErrorHandlerState value)? unknownError,
    TResult? Function(_InternetErrorHandlerState value)? internetError,
    TResult? Function(_GeneralErrorHandlerState value)? generalError,
  }) {
    return internetError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitErrorHandlerState value)? init,
    TResult Function(_UnknownErrorHandlerState value)? unknownError,
    TResult Function(_InternetErrorHandlerState value)? internetError,
    TResult Function(_GeneralErrorHandlerState value)? generalError,
    required TResult orElse(),
  }) {
    if (internetError != null) {
      return internetError(this);
    }
    return orElse();
  }
}

abstract class _InternetErrorHandlerState implements ErrorHandlerState {
  const factory _InternetErrorHandlerState([final VoidCallback? retry]) =
      _$InternetErrorHandlerStateImpl;

  VoidCallback? get retry;
  @JsonKey(ignore: true)
  _$$InternetErrorHandlerStateImplCopyWith<_$InternetErrorHandlerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneralErrorHandlerStateImplCopyWith<$Res> {
  factory _$$GeneralErrorHandlerStateImplCopyWith(
          _$GeneralErrorHandlerStateImpl value,
          $Res Function(_$GeneralErrorHandlerStateImpl) then) =
      __$$GeneralErrorHandlerStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? title, String description, VoidCallback? retry});
}

/// @nodoc
class __$$GeneralErrorHandlerStateImplCopyWithImpl<$Res>
    extends _$ErrorHandlerStateCopyWithImpl<$Res,
        _$GeneralErrorHandlerStateImpl>
    implements _$$GeneralErrorHandlerStateImplCopyWith<$Res> {
  __$$GeneralErrorHandlerStateImplCopyWithImpl(
      _$GeneralErrorHandlerStateImpl _value,
      $Res Function(_$GeneralErrorHandlerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = null,
    Object? retry = freezed,
  }) {
    return _then(_$GeneralErrorHandlerStateImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == retry
          ? _value.retry
          : retry // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$GeneralErrorHandlerStateImpl
    with DiagnosticableTreeMixin
    implements _GeneralErrorHandlerState {
  const _$GeneralErrorHandlerStateImpl(this.title, this.description,
      [this.retry]);

  @override
  final String? title;
  @override
  final String description;
  @override
  final VoidCallback? retry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ErrorHandlerState.generalError(title: $title, description: $description, retry: $retry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ErrorHandlerState.generalError'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('retry', retry));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralErrorHandlerStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.retry, retry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(retry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralErrorHandlerStateImplCopyWith<_$GeneralErrorHandlerStateImpl>
      get copyWith => __$$GeneralErrorHandlerStateImplCopyWithImpl<
          _$GeneralErrorHandlerStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Object? error, VoidCallback? retry) unknownError,
    required TResult Function(VoidCallback? retry) internetError,
    required TResult Function(
            String? title, String description, VoidCallback? retry)
        generalError,
  }) {
    return generalError(title, description, retry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Object? error, VoidCallback? retry)? unknownError,
    TResult? Function(VoidCallback? retry)? internetError,
    TResult? Function(String? title, String description, VoidCallback? retry)?
        generalError,
  }) {
    return generalError?.call(title, description, retry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Object? error, VoidCallback? retry)? unknownError,
    TResult Function(VoidCallback? retry)? internetError,
    TResult Function(String? title, String description, VoidCallback? retry)?
        generalError,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError(title, description, retry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitErrorHandlerState value) init,
    required TResult Function(_UnknownErrorHandlerState value) unknownError,
    required TResult Function(_InternetErrorHandlerState value) internetError,
    required TResult Function(_GeneralErrorHandlerState value) generalError,
  }) {
    return generalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitErrorHandlerState value)? init,
    TResult? Function(_UnknownErrorHandlerState value)? unknownError,
    TResult? Function(_InternetErrorHandlerState value)? internetError,
    TResult? Function(_GeneralErrorHandlerState value)? generalError,
  }) {
    return generalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitErrorHandlerState value)? init,
    TResult Function(_UnknownErrorHandlerState value)? unknownError,
    TResult Function(_InternetErrorHandlerState value)? internetError,
    TResult Function(_GeneralErrorHandlerState value)? generalError,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError(this);
    }
    return orElse();
  }
}

abstract class _GeneralErrorHandlerState implements ErrorHandlerState {
  const factory _GeneralErrorHandlerState(
      final String? title, final String description,
      [final VoidCallback? retry]) = _$GeneralErrorHandlerStateImpl;

  String? get title;
  String get description;
  VoidCallback? get retry;
  @JsonKey(ignore: true)
  _$$GeneralErrorHandlerStateImplCopyWith<_$GeneralErrorHandlerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
