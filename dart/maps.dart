void main(List<String> args) {
  //Key ve value tüm tipleri alabilir ancak Key data String kullanılır , Value dynmaic olabilir.
  var m1 = {"Key": "Value"}; //model
  var m2 = {"Key": "Value"}; //model
  var m3 = {"Key": "Value"}; //model
  var m4 = Map<String, dynamic>();

  m4["Key1"] = "Value1";
  m4["Key2"] = "Value2";
  m4["Key3"] = "Value3";

  //Genellikle Sunucudan farklı tipler değerler gelir bunun için tip dönüşümleriyle uğraşmamak için value'leri dynmaic tanımlarız.
  Map<String, dynamic> m5 = {
    "sID": 2312312312312,
    "acces-token": "",
    "userName": "",
    "emailVerify": true,
    "last-acces-point": [],
    "documents": {
      //Map içinde map oluşturulabilir.-> Complex Map
      "documentId": 21312412,
      "bucketLink": "https://......",
    }
  };

  print("$m5");
}
