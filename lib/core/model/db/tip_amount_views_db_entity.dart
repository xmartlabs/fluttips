import 'package:floor/floor.dart';
import 'package:flutter_template/core/model/db/tip_db_entity.dart';

@Entity(
  tableName: 'TipsAmountViews',
  foreignKeys: [
    ForeignKey(
      childColumns: ['tipId'],
      parentColumns: ['id'],
      entity: TipDbEntity,
    ),
  ],
)
class TipAmountViewsDbEntity {
  static const String tableName = 'TipsAmountViews';
  @primaryKey
  final String tipId;
  int amountViews;

  TipAmountViewsDbEntity({
    required this.tipId,
    this.amountViews = 0,
  });
}
