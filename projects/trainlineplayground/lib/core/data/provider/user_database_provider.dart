import 'package:sqflite/sqflite.dart';

import '../models/user_model.dart';

class UserDatabaseProvider {
  late Database database;
  late final String _userDatabaseName = "userDatabase";
  late final String _userTableName= "user";

  String columnUserEmail = 'userEmail';
  String columnUserName = 'userName';
  String columnLogIn = 'isUserLogIn';

  Future<void> open() async {
    // bu fonksiyonu future olarak tanımla
    database = await openDatabase(
      _userDatabaseName,
      onCreate: (db, version) {
        createTable(db);
      },
    );
  }
  void createTable(Database db){
    db.execute(
          "CREATE TABLE $_userTableName ( id INTEGER PRIMARY KEY AUTOINCREMENT, $columnUserName VARCHAR(20), $columnUserEmail TEXT,$columnLogIn INTEGER )",
                    
          );
  }

  Future<List<UserModel>> getList() async {
    List<Map> userMaps = await database.query(_userTableName);

    return userMaps.map((e) => UserModel.fromJson(e)).toList();

  }
}
