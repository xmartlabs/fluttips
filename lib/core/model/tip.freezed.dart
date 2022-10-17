// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tip _$TipFromJson(Map<String, dynamic> json) {
  return _Tip.fromJson(json);
}

/// @nodoc
mixin _$Tip {
  String get url => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipCopyWith<Tip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipCopyWith<$Res> {
  factory $TipCopyWith(Tip value, $Res Function(Tip) then) =
      _$TipCopyWithImpl<$Res>;
  $Res call({String url, String path});
}

/// @nodoc
class _$TipCopyWithImpl<$Res> implements $TipCopyWith<$Res> {
  _$TipCopyWithImpl(this._value, this._then);

  final Tip _value;
  // ignore: unused_field
  final $Res Function(Tip) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TipCopyWith<$Res> implements $TipCopyWith<$Res> {
  factory _$$_TipCopyWith(_$_Tip value, $Res Function(_$_Tip) then) =
      __$$_TipCopyWithImpl<$Res>;
  @override
  $Res call({String url, String path});
}

/// @nodoc
class __$$_TipCopyWithImpl<$Res> extends _$TipCopyWithImpl<$Res>
    implements _$$_TipCopyWith<$Res> {
  __$$_TipCopyWithImpl(_$_Tip _value, $Res Function(_$_Tip) _then)
      : super(_value, (v) => _then(v as _$_Tip));

  @override
  _$_Tip get _value => super._value as _$_Tip;

  @override
  $Res call({
    Object? url = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_Tip(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_Tip implements _Tip {
  _$_Tip({required this.url, required this.path});

  factory _$_Tip.fromJson(Map<String, dynamic> json) => _$$_TipFromJson(json);

  @override
  final String url;
  @override
  final String path;

  @override
  String toString() {
    return 'Tip(url: $url, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tip &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_TipCopyWith<_$_Tip> get copyWith =>
      __$$_TipCopyWithImpl<_$_Tip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TipToJson(
      this,
    );
  }
}

abstract class _Tip implements Tip {
  factory _Tip({required final String url, required final String path}) =
      _$_Tip;

  factory _Tip.fromJson(Map<String, dynamic> json) = _$_Tip.fromJson;

  @override
  String get url;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_TipCopyWith<_$_Tip> get copyWith => throw _privateConstructorUsedError;
}
