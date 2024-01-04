// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  DateTime? get favouriteDate => throw _privateConstructorUsedError;
  int get amountViews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipCopyWith<Tip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipCopyWith<$Res> {
  factory $TipCopyWith(Tip value, $Res Function(Tip) then) =
      _$TipCopyWithImpl<$Res, Tip>;
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      String imageUrl,
      String? codeUrl,
      String? mdUrl,
      int randomId,
      DateTime? favouriteDate,
      int amountViews});
}

/// @nodoc
class _$TipCopyWithImpl<$Res, $Val extends Tip> implements $TipCopyWith<$Res> {
  _$TipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? imageUrl = null,
    Object? codeUrl = freezed,
    Object? mdUrl = freezed,
    Object? randomId = null,
    Object? favouriteDate = freezed,
    Object? amountViews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      codeUrl: freezed == codeUrl
          ? _value.codeUrl
          : codeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mdUrl: freezed == mdUrl
          ? _value.mdUrl
          : mdUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      randomId: null == randomId
          ? _value.randomId
          : randomId // ignore: cast_nullable_to_non_nullable
              as int,
      favouriteDate: freezed == favouriteDate
          ? _value.favouriteDate
          : favouriteDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amountViews: null == amountViews
          ? _value.amountViews
          : amountViews // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipImplCopyWith<$Res> implements $TipCopyWith<$Res> {
  factory _$$TipImplCopyWith(_$TipImpl value, $Res Function(_$TipImpl) then) =
      __$$TipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      String imageUrl,
      String? codeUrl,
      String? mdUrl,
      int randomId,
      DateTime? favouriteDate,
      int amountViews});
}

/// @nodoc
class __$$TipImplCopyWithImpl<$Res> extends _$TipCopyWithImpl<$Res, _$TipImpl>
    implements _$$TipImplCopyWith<$Res> {
  __$$TipImplCopyWithImpl(_$TipImpl _value, $Res Function(_$TipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? imageUrl = null,
    Object? codeUrl = freezed,
    Object? mdUrl = freezed,
    Object? randomId = null,
    Object? favouriteDate = freezed,
    Object? amountViews = null,
  }) {
    return _then(_$TipImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      codeUrl: freezed == codeUrl
          ? _value.codeUrl
          : codeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mdUrl: freezed == mdUrl
          ? _value.mdUrl
          : mdUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      randomId: null == randomId
          ? _value.randomId
          : randomId // ignore: cast_nullable_to_non_nullable
              as int,
      favouriteDate: freezed == favouriteDate
          ? _value.favouriteDate
          : favouriteDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amountViews: null == amountViews
          ? _value.amountViews
          : amountViews // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$TipImpl implements _Tip {
  _$TipImpl(
      {required this.id,
      required this.name,
      required this.url,
      required this.imageUrl,
      required this.codeUrl,
      required this.mdUrl,
      required this.randomId,
      this.favouriteDate,
      this.amountViews = 0});

  factory _$TipImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipImplFromJson(json);

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
  final DateTime? favouriteDate;
  @override
  @JsonKey()
  final int amountViews;

  @override
  String toString() {
    return 'Tip(id: $id, name: $name, url: $url, imageUrl: $imageUrl, codeUrl: $codeUrl, mdUrl: $mdUrl, randomId: $randomId, favouriteDate: $favouriteDate, amountViews: $amountViews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.codeUrl, codeUrl) || other.codeUrl == codeUrl) &&
            (identical(other.mdUrl, mdUrl) || other.mdUrl == mdUrl) &&
            (identical(other.randomId, randomId) ||
                other.randomId == randomId) &&
            (identical(other.favouriteDate, favouriteDate) ||
                other.favouriteDate == favouriteDate) &&
            (identical(other.amountViews, amountViews) ||
                other.amountViews == amountViews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, url, imageUrl, codeUrl,
      mdUrl, randomId, favouriteDate, amountViews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipImplCopyWith<_$TipImpl> get copyWith =>
      __$$TipImplCopyWithImpl<_$TipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipImplToJson(
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
      final DateTime? favouriteDate,
      final int amountViews}) = _$TipImpl;

  factory _Tip.fromJson(Map<String, dynamic> json) = _$TipImpl.fromJson;

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
  DateTime? get favouriteDate;
  @override
  int get amountViews;
  @override
  @JsonKey(ignore: true)
  _$$TipImplCopyWith<_$TipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
