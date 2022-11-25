// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_tree_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubTreeResponse _$GitHubTreeResponseFromJson(Map<String, dynamic> json) {
  return _GitHiubTreeResponse.fromJson(json);
}

/// @nodoc
mixin _$GitHubTreeResponse {
  List<GitHubFile> get tree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubTreeResponseCopyWith<GitHubTreeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubTreeResponseCopyWith<$Res> {
  factory $GitHubTreeResponseCopyWith(
          GitHubTreeResponse value, $Res Function(GitHubTreeResponse) then) =
      _$GitHubTreeResponseCopyWithImpl<$Res, GitHubTreeResponse>;
  @useResult
  $Res call({List<GitHubFile> tree});
}

/// @nodoc
class _$GitHubTreeResponseCopyWithImpl<$Res, $Val extends GitHubTreeResponse>
    implements $GitHubTreeResponseCopyWith<$Res> {
  _$GitHubTreeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
  }) {
    return _then(_value.copyWith(
      tree: null == tree
          ? _value.tree
          : tree // ignore: cast_nullable_to_non_nullable
              as List<GitHubFile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHiubTreeResponseCopyWith<$Res>
    implements $GitHubTreeResponseCopyWith<$Res> {
  factory _$$_GitHiubTreeResponseCopyWith(_$_GitHiubTreeResponse value,
          $Res Function(_$_GitHiubTreeResponse) then) =
      __$$_GitHiubTreeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GitHubFile> tree});
}

/// @nodoc
class __$$_GitHiubTreeResponseCopyWithImpl<$Res>
    extends _$GitHubTreeResponseCopyWithImpl<$Res, _$_GitHiubTreeResponse>
    implements _$$_GitHiubTreeResponseCopyWith<$Res> {
  __$$_GitHiubTreeResponseCopyWithImpl(_$_GitHiubTreeResponse _value,
      $Res Function(_$_GitHiubTreeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tree = null,
  }) {
    return _then(_$_GitHiubTreeResponse(
      tree: null == tree
          ? _value._tree
          : tree // ignore: cast_nullable_to_non_nullable
              as List<GitHubFile>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_GitHiubTreeResponse implements _GitHiubTreeResponse {
  _$_GitHiubTreeResponse({required final List<GitHubFile> tree}) : _tree = tree;

  factory _$_GitHiubTreeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GitHiubTreeResponseFromJson(json);

  final List<GitHubFile> _tree;
  @override
  List<GitHubFile> get tree {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tree);
  }

  @override
  String toString() {
    return 'GitHubTreeResponse(tree: $tree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHiubTreeResponse &&
            const DeepCollectionEquality().equals(other._tree, _tree));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tree));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHiubTreeResponseCopyWith<_$_GitHiubTreeResponse> get copyWith =>
      __$$_GitHiubTreeResponseCopyWithImpl<_$_GitHiubTreeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHiubTreeResponseToJson(
      this,
    );
  }
}

abstract class _GitHiubTreeResponse implements GitHubTreeResponse {
  factory _GitHiubTreeResponse({required final List<GitHubFile> tree}) =
      _$_GitHiubTreeResponse;

  factory _GitHiubTreeResponse.fromJson(Map<String, dynamic> json) =
      _$_GitHiubTreeResponse.fromJson;

  @override
  List<GitHubFile> get tree;
  @override
  @JsonKey(ignore: true)
  _$$_GitHiubTreeResponseCopyWith<_$_GitHiubTreeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
