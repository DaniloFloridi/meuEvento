import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Conexao {
  static const _dbname = "meuevento.db";
  static const _sqlScript =
      'CREATE TABLE cadastro(id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, email TEXT, data_de_nascimento DATE, endereco TEXT, senha TEXT, confirmar_senha TEXT)';

  static const table = 'cadastro';
  static const columnId = 'id';
  static const columnNome = 'nome';
  static const columnemail = 'email';
  static const columnDatadenascimento = 'data_de_nascimento';
  static const columnEndereco = 'endereco';
  static const columnSenha = 'senha';
  static const columnConfirmarsenha = 'confirmar_senha';

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
