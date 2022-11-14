import 'package:floor/floor.dart';

@Entity(tableName: 'tips')
class TipDbEntity {
  @primaryKey
  final String id;
  final String name;
  final String url;
  final String imageUrl;
  final String? codeUrl;
  final String? mdUrl;
  String? favouriteDate;
  int randomId;

  TipDbEntity({
    required this.id,
    required this.name,
    required this.url,
    required this.imageUrl,
    required this.codeUrl,
    required this.mdUrl,
    required this.randomId,
    required this.favouriteDate,
  });
}
