

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyUserModel{
  int id;
  String username;
  String useremail;

  MyUserModel({required this.id,required this.useremail,required this.username});


  MyUserModel.fromJson(Map<String,dynamic> data): 
      id=data["id"],
      username = data["username"],
      useremail=data["useremail"];

  Map<String,dynamic> toJson(){
    return {
      "id":id,
      "username":username,
      "useremail":useremail
    };
  }    
}

class DataBase{

  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path,'myuser.db'),
      version: 1,
      onCreate:(Database db,int version) async{
        await db.execute("CREATE TABLE user(id INTEGER PRIMARY KEY,username TEXT NOT NULL,useremail TEXT NOT NULL)");
        
      },
    );
  }

  Future<int> insertUser(List<MyUserModel> myusermodel) async { //insert data
    int result = 0;
    final Database db = await initializeDB();
    for(var user in myusermodel){
      result = await db.insert('user',user.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace);
    }
    return result;
  }

  Future<List<MyUserModel>> retrieveUser(int id) async { // çağırma ve mapleme
    final Database db = await initializeDB();
    final List<Map<String,Object?>> queryResult = await db.query('user');
    return queryResult.map((e) => MyUserModel.fromJson(e)).toList();
  }

  Future<void> deleteUser(int id)async{
    final db = await initializeDB();
    await db.delete(
      'user',
      where: "id = ?",
      whereArgs: [id],
    );
  }
}