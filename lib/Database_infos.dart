import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'Infos.dart';

class Databaseinfos {
  static final Databaseinfos instance = Databaseinfos._init();

  static Database? _database;

  Databaseinfos._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('infos.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    await db.execute('''
CREATE TABLE $tableInfos ( 
  ${InfosFields.id} $idType, 
  ${InfosFields.prenom} $textType,
  ${InfosFields.nom} $textType,
  ${InfosFields.ville} $textType,
  ${InfosFields.telephone} $textType,
  ${InfosFields.email} $textType,
  ${InfosFields.etablissement} $textType,
  ${InfosFields.formation} $textType
  )
''');
  }

  Future<Infos> createInfos(Infos info) async {
    final db = await instance.database;
    final id = await db.insert(tableInfos, info.toJson());
    return info.copy(id: id);
  }
}
