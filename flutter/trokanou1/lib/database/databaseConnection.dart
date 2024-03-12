import 'package:sqflite/sqflite.dart' show Database, openDatabase;
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
        "CREATE TABLE USAGER(idUsager PRIMARY KEY AUTOINCREMENT , image VARCHARD(255); nom VARCHARD(255),prenom VARCHARD(255),adresse VARCHARD(255),numero_tel INT, mail VARCHARD(255), typeUsage VARCHARD(255))";
    String sqlTheme = "";
    String sqlMaterialService = "";
    String sql = sqlUsager + sqlTheme + sqlMaterialService;
    await database.execute(sql);
  }
}
