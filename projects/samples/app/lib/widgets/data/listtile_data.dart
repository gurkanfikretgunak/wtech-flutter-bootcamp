

import 'dart:math';

import 'package:app/widgets/model/listtile_model.dart';

class ListtileData{

static List<ListtileModel> model = [];


static List<ListtileModel> listtileItem(){

  for(int i=0; i<30; i++){
    var currentModel = ListtileModel(name:(i+1).toString()  , telephoneNo:  (Random().nextInt(100000)).toString()  );
    model.add(currentModel);
  }

  return model;
}



}

