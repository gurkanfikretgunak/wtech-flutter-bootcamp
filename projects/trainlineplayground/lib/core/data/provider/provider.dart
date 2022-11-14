

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../api/deneme_api.dart';

class objectList extends ChangeNotifier{

  late Future<List<Dest>> destinationObject;

  late Future<List<Dest>> object;

  Future<List<Dest>> getDestinations() async {

    Future<List<Dest>> futureDest =await RestClient(Dio(BaseOptions(contentType: "application/json"))).getDest().then((value) => object);

    

    notifyListeners();

    return futureDest;
  }
  destinationObject.add(futureDest);
  
  
}