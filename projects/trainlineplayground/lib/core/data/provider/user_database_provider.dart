import 'package:sqflite/sqflite.dart';

import '../models/user_model.dart';

class UserDatabaseProvider {
  late Database database;
  late final String _userDatabaseName = "userDatabase";
  late final String _userTableName = "user";

  String columnUserEmail = 'userEmail';
  String columnUserName = 'userName';
  String columnLogIn = 'isUserLogIn';
  String columnId = '1';

  Future<void> open() async {
    // bu fonksiyonu future olarak tanımla
    database = await openDatabase(
      _userDatabaseName,
      onCreate: (db, version) {
        createTable(db);
      },
    );
  }

  Future<void> createTable(Database db) async {
    if(database == null) open(); 
    await db.execute(
      "CREATE TABLE $_userTableName ( $columnId INTEGER PRIMARY KEY AUTOINCREMENT, $columnUserName VARCHAR(20), $columnUserEmail TEXT,$columnLogIn INTEGER )",
    );
  }

  Future<List<UserModel>> getList() async {
    if(database == null) open(); 
    List<Map<String, dynamic>> userMaps = await database.query(_userTableName);

    return userMaps.map((e) => UserModel.fromJson(e)).toList();
  }

  Future<UserModel?> getItem() async {
    if(database == null) open(); 
    List<Map<String, dynamic>> userMap = await database.query(_userTableName,
        where: '$columnLogIn = ?', columns: [columnLogIn]);
    if (userMap.isNotEmpty) {
      return UserModel.fromJson(userMap.first);
    } else {
      return null;
    }
  }

  Future<bool> deleteItem(int userLoginCheck) async {
    if(database == null) open(); 
    final userMap = await database.delete(_userTableName,
        where: '$columnLogIn = ?',whereArgs: [columnLogIn]);
    return userMap != null;
  }

  Future<bool> updateItem(int userLoginCheck,UserModel model) async {
    if(database == null) open(); 
    final userMap = await database.update(_userTableName,
        model.toJson(),
        where: '$columnLogIn = ?',whereArgs: [columnLogIn]);
    return userMap != null;
  }

  Future<void> insertItem(UserModel model) async {
    if(database == null) open(); 
    final userMap = await database.insert(_userTableName,
        model.toJson());
    
  }
  Future<void> close() async{
    database.close();
  }
}
