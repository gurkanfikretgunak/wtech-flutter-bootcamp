void main(List<String> args) {
  var m1 = {"Key": "Value"}; //model
  var m2 = {1: "Value"}; //model
  var m3 = {[]: "Value"}; //model

  var m4 = Map<String, dynamic>();
  m4["key1"] = "value1";
  m4["key2"] = "value2";
  m4["key3"] = "value3";
  //map içinde map olabilir.
  Map<String, dynamic> m5 = {
    "documents": {
      "documentID": 12345671,
      "documentName": "val",
    }
  };
  print("$m1,$m2,$m3,$m5");
}
