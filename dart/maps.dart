void main(List<String> args) {
  var m1 = {"Key": "Value"};
  var m2 = {1: "Value"};
  var m3 = {[]: "Value"};

  var m4 = Map<String, String>();

  m4["Key1"] = "Value1";
  m4["Key2"] = "Value2";
  m4["Key3"] = "Value3";

  Map<String, dynamic> m5 = {
    "sID": 9410929320,
    "acces-token": "12l312dsadsadsad.1sadasdasdasd.1asda",
    "userName": "gurkanfikretgunak",
    "emailVerify": true,
    "oldUserData": false,
    "last-access-point": [132, 24, 59],
    "documents": {
      "documentID": 12312312,
      "bucketLink": "https://file.sample.com/userId/12312312",
    }
  };
  print("$m1,$m2,$m3,$m4,$m5");
}
