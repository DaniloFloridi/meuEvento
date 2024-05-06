import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Conexao {
  static const _dbname = "meuevento.db";
  static const _sqlScript =
      'CREATE TABLE login(id INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT, senha TEXT)';

  static const table = 'login';
  static const columnId = 'id';
  static const columnemail = 'email';
  static const columnSenha = 'senha';

  Conexao._privateConstructor();
  static final Conexao instance = Conexao._privateConstructor();
  static Database? _database;

  Future<Database> get database async {
    return _database ??= await initDB();
  }

  Future<Database> initDB() async {
    return openDatabase(
      join(await getDatabasesPath(), _dbname),
      onCreate: (db, version) {
        return db.execute(_sqlScript);
      },
      version: 1,
    );
  }
}
