// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tips_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipResponse _$TipResponseFromJson(Map<String, dynamic> json) {
  return _TipResponse.fromJson(json);
}

/// @nodoc
mixin _$TipResponse {
  List<Tip> get tree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipResponseCopyWith<TipResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipResponseCopyWith<$Res> {
  factory $TipResponseCopyWith(
          TipResponse value, $Res Function(TipResponse) then) =
      _$TipResponseCopyWithImpl<$Res>;
  $Res call({List<Tip> tree});
}

/// @nodoc
class _$TipResponseCopyWithImpl<$Res> implements $TipResponseCopyWith<$Res> {
  _$TipResponseCopyWithImpl(this._value, this._then);

  final TipResponse _value;
  // ignore: unused_field
  final $Res Function(TipResponse) _then;

  @override
  $Res call({
    Object? tree = freezed,
  }) {
    return _then(_value.copyWith(
      tree: tree == freezed
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as List<Tip>,
    ));
  }
}

/// @nodoc
abstract class _$$_TipResponseCopyWith<$Res>
    implements $TipResponseCopyWith<$Res> {
  factory _$$_TipResponseCopyWith(
          _$_TipResponse value, $Res Function(_$_TipResponse) then) =
      __$$_TipResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Tip> tree});
}

/// @nodoc
class __$$_TipResponseCopyWithImpl<$Res> extends _$TipResponseCopyWithImpl<$Res>
    implements _$$_TipResponseCopyWith<$Res> {
  __$$_TipResponseCopyWithImpl(
      _$_TipResponse _value, $Res Function(_$_TipResponse) _then)
      : super(_value, (v) => _then(v as _$_TipResponse));

  @override
  _$_TipResponse get _value => super._value as _$_TipResponse;

  @override
  $Res call({
    Object? tree = freezed,
  }) {
    return _then(_$_TipResponse(
      tree: tree == freezed
          ? _value._tree
          : tree // ignore: cast_nullable_to_non_nullable
              as List<Tip>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_TipResponse implements _TipResponse {
  _$_TipResponse({required final List<Tip> tree}) : _tree = tree;

  factory _$_TipResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TipResponseFromJson(json);

  final List<Tip> _tree;
  @override
  List<Tip> get tree {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tree);
  }

  @override
  String toString() {
    return 'TipResponse(tree: $tree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TipResponse &&
            const DeepCollectionEquality().equals(other._tree, _tree));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tree));

  @JsonKey(ignore: true)
  @override
  _$$_TipResponseCopyWith<_$_TipResponse> get copyWith =>
      __$$_TipResponseCopyWithImpl<_$_TipResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TipResponseToJson(
      this,
    );
  }
}

abstract class _TipResponse implements TipResponse {
  factory _TipResponse({required final List<Tip> tree}) = _$_TipResponse;

  factory _TipResponse.fromJson(Map<String, dynamic> json) =
      _$_TipResponse.fromJson;

  @override
  List<Tip> get tree;
  @override
  @JsonKey(ignore: true)
  _$$_TipResponseCopyWith<_$_TipResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
