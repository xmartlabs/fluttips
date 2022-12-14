import 'package:floor/floor.dart';

@Entity(tableName: TipDbEntity.tableName)
class TipDbEntity {
  static const String tableName = 'Tips';
  @primaryKey
  final String id;
  final String name;
  final String url;
  final String imageUrl;
  final String? codeUrl;
  final String? mdUrl;
  DateTime? favouriteDate;
  int randomId;
  int amountViews;

  TipDbEntity({
    required this.id,
    required this.name,
    required this.url,
    required this.imageUrl,
    required this.codeUrl,
    required this.mdUrl,
    required this.randomId,
    required this.favouriteDate,
    required this.amountViews,
  });
}
