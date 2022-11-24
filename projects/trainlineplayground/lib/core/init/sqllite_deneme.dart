
import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';


class OrjinUserModel{
  final int? id;
  final String userName;
  final String userEmail;
  // giris yapıldıysa kontrol et userlogin = 1 ata

  OrjinUserModel({required this.userName,required this.userEmail,this.id});

  factory OrjinUserModel.fromMap(Map<String,dynamic> json) => OrjinUserModel(
    userName: json['userName'], 
    userEmail: json['userEmail'],
    id: json['id']
    );

  Map<String,dynamic> toMap(){
    return {
      'userName' :userName,
      'userEmail' : userEmail,
      'id' : id
    };
  }  // modeli oluşturduk json formatına cevirmek icin fonksiyonlarımızı yazdık moruk
  //şimdi database helper kullanıcaz
}

class DatabaseHelper{
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??=await _initDatabase();
  // demek istiyor ki eğer _database değişkeni yoksa initialize et 

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path,'orjinusermodel.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate // eğer table miz yoksa oluşturmak lazım, o yüzden _oncreate fonksiyonu yazalım baba
    );
  }

  Future _onCreate(Database db,int version) async {
    await db.execute(
      '''  
      CREATE TABLE userdb(
        id INTEGER PRIMARY KEY,
        userName TEXT,
        userEmail TEXT
      ) '''
    );
  }  // TABLE OLUŞTURMA FONKSİYONUMUZU YAZDIK, SIRADA GET DATA

  Future<List<OrjinUserModel>> getUser() async {
    Database db = await instance.database;
    var orjinusermodel = await db.query('userdb',orderBy: 'userName');

    List<OrjinUserModel> userList = orjinusermodel.isNotEmpty ?
      orjinusermodel.map((e) => OrjinUserModel.fromMap(e)).toList() : [];

    return userList;  
  }

  Future<int> addUser(OrjinUserModel orjinusermodel) async{
    Database db = await instance.database;
    return await db.insert('orjinusermodel',orjinusermodel.toMap());
  }
}