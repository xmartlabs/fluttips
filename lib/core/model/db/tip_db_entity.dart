import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@Entity(tableName: 'tips')
class TipDbEntity {
  @primaryKey
  final String id;
  final String name;
  final String url;
  final String imageUrl;
  final String? codeUrl;
  final String? mdUrl;
  @Default(false)
  bool favourite;
  @Default(0)
  int randomId;

  TipDbEntity({
    required this.id,
    required this.name,
    required this.url,
    required this.imageUrl,
    required this.codeUrl,
    required this.mdUrl,
    required this.favourite,
    required this.randomId,
  });
}
