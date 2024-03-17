import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'trokannou');
    var database =
        await openDatabase(path, version: 1, onCreate: _createDatabase);
    return database;
  }

  Future<void> _createDatabase(Database database, int version) async {
    String sqlUsager =
        "CREATE TABLE usager(id INTEGER PRIMARY KEY, nom TEXT, prenom TEXT, email TEXT, telephone TEXT, dateAjout TEXT, dateModification TEXT);";
    String sqlTheme =
        "CREATE TABLE theme(id INTEGER PRIMARY KEY, nom TEXT, description TEXT, dateAjout TEXT, dateModification TEXT);";
    String sqlmaterielService =
        "CREATE TABLE materielService(id INTEGER PRIMARY KEY, nom TEXT, description TEXT, prix REAL, dateAjout TEXT, dateModification TEXT, usagerId INTEGER, themeId INTEGER);";
    await database.execute(sqlUsager);
    await database.execute(sqlTheme);
    await database.execute(sqlmaterielService);
  }
}
