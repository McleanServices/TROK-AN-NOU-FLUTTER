import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'trokannou.db');
    var database =
        await openDatabase(path, version: 1, onCreate: _createDatabase);
    return database;
  }

  Future<void> _createDatabase(Database database, int version) async {
    String sqlUsager =
        "CREATE TABLE USAGER(idUsager INTEGER PRIMARY KEY AUTOINCREMENT, image VARCHAR(255), nom VARCHAR(255), prenom VARCHAR(255), adresse VARCHAR(255), numero_tel INTEGER, mail VARCHAR(255), typeUsage VARCHAR(255))";
    String sqlTheme = "";
    String sqlMaterialService = "";
    String sql = sqlUsager + sqlTheme + sqlMaterialService;
    await database.execute(sql);
  }
}
