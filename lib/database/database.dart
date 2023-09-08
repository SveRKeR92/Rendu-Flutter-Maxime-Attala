import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getDatabasesPath();
    var path = join(directory, 'db_users.db');
    var database = await openDatabase(path, version: 1, onCreate: _createDatabase);
    return database;
  }

  Future<void> _createDatabase(Database database, int version) async {
    String sql = """CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        userId INTEGER
      );
      INSERT INTO users (name, userId) values ('test', 1)
      """;
    await database.execute(sql);
  }
}
