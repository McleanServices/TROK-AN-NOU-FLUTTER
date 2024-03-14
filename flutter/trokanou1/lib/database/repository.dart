import 'databaseConnection.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late DatabaseConnection _databaseConnection;
  Repository() {
    _databaseConnection = DatabaseConnection();
  }
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseConnection.setDatabase();
      return _database;
    }
  }

// les methodes
  insertUsager(table, data) async {
    var connection = await database;
    return await connection?.insert(table, data);
  }

  readUsager(table) async {
    var connection = await database;
    return await connection?.query(table);
  }

  deleteUsager(String table, int id) async {
    final connection = await database;
    return await connection?.delete(
      table,
    );
  }
}
