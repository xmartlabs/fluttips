// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  TipsLocalSource? _tipsLocalSourceInstance;

  AmountViewsLocalSource? _amountLocalSourceInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `TipsAmountViews` (`tipId` TEXT NOT NULL, `amountViews` INTEGER NOT NULL, FOREIGN KEY (`tipId`) REFERENCES `Tips` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE, PRIMARY KEY (`tipId`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Tips` (`id` TEXT NOT NULL, `name` TEXT NOT NULL, `url` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `codeUrl` TEXT, `mdUrl` TEXT, `favouriteDate` INTEGER, `randomId` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  TipsLocalSource get tipsLocalSource {
    return _tipsLocalSourceInstance ??=
        _$TipsLocalSource(database, changeListener);
  }

  @override
  AmountViewsLocalSource get amountLocalSource {
    return _amountLocalSourceInstance ??=
        _$AmountViewsLocalSource(database, changeListener);
  }
}

class _$TipsLocalSource extends TipsLocalSource {
  _$TipsLocalSource(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _tipDbEntityInsertionAdapter = InsertionAdapter(
            database,
            'Tips',
            (TipDbEntity item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'url': item.url,
                  'imageUrl': item.imageUrl,
                  'codeUrl': item.codeUrl,
                  'mdUrl': item.mdUrl,
                  'favouriteDate':
                      _dateTimeConverter.encode(item.favouriteDate),
                  'randomId': item.randomId
                },
            changeListener),
        _tipDbEntityUpdateAdapter = UpdateAdapter(
            database,
            'Tips',
            ['id'],
            (TipDbEntity item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'url': item.url,
                  'imageUrl': item.imageUrl,
                  'codeUrl': item.codeUrl,
                  'mdUrl': item.mdUrl,
                  'favouriteDate':
                      _dateTimeConverter.encode(item.favouriteDate),
                  'randomId': item.randomId
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TipDbEntity> _tipDbEntityInsertionAdapter;

  final UpdateAdapter<TipDbEntity> _tipDbEntityUpdateAdapter;

  @override
  Stream<List<TipDbEntity>> getTips() {
    return _queryAdapter.queryListStream('SELECT * FROM Tips ORDER BY randomId',
        mapper: (Map<String, Object?> row) => TipDbEntity(
            id: row['id'] as String,
            name: row['name'] as String,
            url: row['url'] as String,
            imageUrl: row['imageUrl'] as String,
            codeUrl: row['codeUrl'] as String?,
            mdUrl: row['mdUrl'] as String?,
            randomId: row['randomId'] as int,
            favouriteDate:
                _dateTimeConverter.decode(row['favouriteDate'] as int?)),
        queryableName: 'Tips',
        isView: false);
  }

  @override
  Future<List<TipDbEntity>> getTipById(String id) async {
    return _queryAdapter.queryList('SELECT * FROM Tips WHERE id = ?1',
        mapper: (Map<String, Object?> row) => TipDbEntity(
            id: row['id'] as String,
            name: row['name'] as String,
            url: row['url'] as String,
            imageUrl: row['imageUrl'] as String,
            codeUrl: row['codeUrl'] as String?,
            mdUrl: row['mdUrl'] as String?,
            randomId: row['randomId'] as int,
            favouriteDate:
                _dateTimeConverter.decode(row['favouriteDate'] as int?)),
        arguments: [id]);
  }

  @override
  Stream<List<TipDbEntity>> getFavouritesTips() {
    return _queryAdapter.queryListStream(
        'SELECT * FROM Tips WHERE favouriteDate IS NOT NULL ORDER BY favouriteDate ASC',
        mapper: (Map<String, Object?> row) => TipDbEntity(
            id: row['id'] as String,
            name: row['name'] as String,
            url: row['url'] as String,
            imageUrl: row['imageUrl'] as String,
            codeUrl: row['codeUrl'] as String?,
            mdUrl: row['mdUrl'] as String?,
            randomId: row['randomId'] as int,
            favouriteDate:
                _dateTimeConverter.decode(row['favouriteDate'] as int?)),
        queryableName: 'Tips',
        isView: false);
  }

  @override
  Future<void> deleteAllTips() async {
    await _queryAdapter.queryNoReturn('DELETE FROM Tips');
  }

  @override
  Future<void> insertTips(List<TipDbEntity> tips) async {
    await _tipDbEntityInsertionAdapter.insertList(
        tips, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateTip(TipDbEntity tip) async {
    await _tipDbEntityUpdateAdapter.update(tip, OnConflictStrategy.abort);
  }

  @override
  Future<void> replaceAndUpdateTips(List<TipDbEntity> tips) async {
    if (database is sqflite.Transaction) {
      await super.replaceAndUpdateTips(tips);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.tipsLocalSource.replaceAndUpdateTips(tips);
      });
    }
  }
}

class _$AmountViewsLocalSource extends AmountViewsLocalSource {
  _$AmountViewsLocalSource(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _tipAmountViewsDbEntityInsertionAdapter = InsertionAdapter(
            database,
            'TipsAmountViews',
            (TipAmountViewsDbEntity item) => <String, Object?>{
                  'tipId': item.tipId,
                  'amountViews': item.amountViews
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TipAmountViewsDbEntity>
      _tipAmountViewsDbEntityInsertionAdapter;

  @override
  Stream<List<TipAmountViewsDbEntity>> getAmountsView() {
    return _queryAdapter.queryListStream(
        'SELECT * FROM TipsAmountViews ORDER BY amountViews',
        mapper: (Map<String, Object?> row) => TipAmountViewsDbEntity(
            tipId: row['tipId'] as String,
            amountViews: row['amountViews'] as int),
        queryableName: 'TipsAmountViews',
        isView: false);
  }

  @override
  Future<TipAmountViewsDbEntity?> getAmountsViewById(String id) async {
    return _queryAdapter.query('SELECT * FROM TipsAmountViews WHERE tipId = ?1',
        mapper: (Map<String, Object?> row) => TipAmountViewsDbEntity(
            tipId: row['tipId'] as String,
            amountViews: row['amountViews'] as int),
        arguments: [id]);
  }

  @override
  Future<void> insertAmount(TipAmountViewsDbEntity amountView) async {
    await _tipAmountViewsDbEntityInsertionAdapter.insert(
        amountView, OnConflictStrategy.replace);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
