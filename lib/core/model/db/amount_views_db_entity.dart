import 'package:floor/floor.dart';

@Entity(tableName: 'AmountViews')
class AmountViewsDbEntity {
  @primaryKey
  final String id;
  int amountViews;

  AmountViewsDbEntity({
    required this.id,
    this.amountViews = 0,
  });
}
