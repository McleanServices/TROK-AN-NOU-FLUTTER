import 'databaseConnection.dart';
import 'package:sqflite/sqflite.dart';

class Repository{
  late DatabaseConnection _databaseConnection;
  Repository() {
    _databaseConnection = DatabaseConnection();
  }
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null){
      return _database;
  } else {
      _database = await _databaseConnection.setDatabase();
      return _database;
  }

}
// les methodes
}