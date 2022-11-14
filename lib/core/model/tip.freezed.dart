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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String? get codeUrl => throw _privateConstructorUsedError;
  String? get mdUrl => throw _privateConstructorUsedError;
  int get randomId => throw _privateConstructorUsedError;
  String? get favouriteDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipCopyWith<Tip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipCopyWith<$Res> {
  factory $TipCopyWith(Tip value, $Res Function(Tip) then) =
      _$TipCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String url,
      String imageUrl,
      String? codeUrl,
      String? mdUrl,
      int randomId,
      String? favouriteDate});
}

/// @nodoc
class _$TipCopyWithImpl<$Res> implements $TipCopyWith<$Res> {
  _$TipCopyWithImpl(this._value, this._then);

  final Tip _value;
  // ignore: unused_field
  final $Res Function(Tip) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? codeUrl = freezed,
    Object? mdUrl = freezed,
    Object? randomId = freezed,
    Object? favouriteDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      codeUrl: codeUrl == freezed
          ? _value.codeUrl
          : codeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mdUrl: mdUrl == freezed
          ? _value.mdUrl
          : mdUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      randomId: randomId == freezed
          ? _value.randomId
          : randomId // ignore: cast_nullable_to_non_nullable
              as int,
      favouriteDate: favouriteDate == freezed
          ? _value.favouriteDate
          : favouriteDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TipCopyWith<$Res> implements $TipCopyWith<$Res> {
  factory _$$_TipCopyWith(_$_Tip value, $Res Function(_$_Tip) then) =
      __$$_TipCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String url,
      String imageUrl,
      String? codeUrl,
      String? mdUrl,
      int randomId,
      String? favouriteDate});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? codeUrl = freezed,
    Object? mdUrl = freezed,
    Object? randomId = freezed,
    Object? favouriteDate = freezed,
  }) {
    return _then(_$_Tip(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      codeUrl: codeUrl == freezed
          ? _value.codeUrl
          : codeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mdUrl: mdUrl == freezed
          ? _value.mdUrl
          : mdUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      randomId: randomId == freezed
          ? _value.randomId
          : randomId // ignore: cast_nullable_to_non_nullable
              as int,
      favouriteDate: favouriteDate == freezed
          ? _value.favouriteDate
          : favouriteDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_Tip implements _Tip {
  _$_Tip(
      {required this.id,
      required this.name,
      required this.url,
      required this.imageUrl,
      required this.codeUrl,
      required this.mdUrl,
      required this.randomId,
      this.favouriteDate});

  factory _$_Tip.fromJson(Map<String, dynamic> json) => _$$_TipFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String? codeUrl;
  @override
  final String? mdUrl;
  @override
  final int randomId;
  @override
  final String? favouriteDate;

  @override
  String toString() {
    return 'Tip(id: $id, name: $name, url: $url, imageUrl: $imageUrl, codeUrl: $codeUrl, mdUrl: $mdUrl, randomId: $randomId, favouriteDate: $favouriteDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tip &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.codeUrl, codeUrl) &&
            const DeepCollectionEquality().equals(other.mdUrl, mdUrl) &&
            const DeepCollectionEquality().equals(other.randomId, randomId) &&
            const DeepCollectionEquality()
                .equals(other.favouriteDate, favouriteDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(codeUrl),
      const DeepCollectionEquality().hash(mdUrl),
      const DeepCollectionEquality().hash(randomId),
      const DeepCollectionEquality().hash(favouriteDate));

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
  factory _Tip(
      {required final String id,
      required final String name,
      required final String url,
      required final String imageUrl,
      required final String? codeUrl,
      required final String? mdUrl,
      required final int randomId,
      final String? favouriteDate}) = _$_Tip;

  factory _Tip.fromJson(Map<String, dynamic> json) = _$_Tip.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  String get imageUrl;
  @override
  String? get codeUrl;
  @override
  String? get mdUrl;
  @override
  int get randomId;
  @override
  String? get favouriteDate;
  @override
  @JsonKey(ignore: true)
  _$$_TipCopyWith<_$_Tip> get copyWith => throw _privateConstructorUsedError;
}
