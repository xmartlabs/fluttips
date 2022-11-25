// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubFile _$GitHubFileFromJson(Map<String, dynamic> json) {
  return _GitHubFile.fromJson(json);
}

/// @nodoc
mixin _$GitHubFile {
  String get path => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  GitHubFileType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubFileCopyWith<GitHubFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubFileCopyWith<$Res> {
  factory $GitHubFileCopyWith(
          GitHubFile value, $Res Function(GitHubFile) then) =
      _$GitHubFileCopyWithImpl<$Res, GitHubFile>;
  @useResult
  $Res call({String path, String url, GitHubFileType type});
}

/// @nodoc
class _$GitHubFileCopyWithImpl<$Res, $Val extends GitHubFile>
    implements $GitHubFileCopyWith<$Res> {
  _$GitHubFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GitHubFileType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubFileCopyWith<$Res>
    implements $GitHubFileCopyWith<$Res> {
  factory _$$_GitHubFileCopyWith(
          _$_GitHubFile value, $Res Function(_$_GitHubFile) then) =
      __$$_GitHubFileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String url, GitHubFileType type});
}

/// @nodoc
class __$$_GitHubFileCopyWithImpl<$Res>
    extends _$GitHubFileCopyWithImpl<$Res, _$_GitHubFile>
    implements _$$_GitHubFileCopyWith<$Res> {
  __$$_GitHubFileCopyWithImpl(
      _$_GitHubFile _value, $Res Function(_$_GitHubFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$_GitHubFile(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as GitHubFileType,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_GitHubFile implements _GitHubFile {
  _$_GitHubFile({required this.path, required this.url, required this.type});

  factory _$_GitHubFile.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubFileFromJson(json);

  @override
  final String path;
  @override
  final String url;
  @override
  final GitHubFileType type;

  @override
  String toString() {
    return 'GitHubFile(path: $path, url: $url, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubFile &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubFileCopyWith<_$_GitHubFile> get copyWith =>
      __$$_GitHubFileCopyWithImpl<_$_GitHubFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubFileToJson(
      this,
    );
  }
}

abstract class _GitHubFile implements GitHubFile {
  factory _GitHubFile(
      {required final String path,
      required final String url,
      required final GitHubFileType type}) = _$_GitHubFile;

  factory _GitHubFile.fromJson(Map<String, dynamic> json) =
      _$_GitHubFile.fromJson;

  @override
  String get path;
  @override
  String get url;
  @override
  GitHubFileType get type;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubFileCopyWith<_$_GitHubFile> get copyWith =>
      throw _privateConstructorUsedError;
}
