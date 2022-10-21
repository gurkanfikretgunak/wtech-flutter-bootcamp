void main(List<String> args) {
  var m1 = {"Key": "Value"};
  var m2 = {1: "Value"};
  var m3 = {[]: "Value"};
  var m4 = Map<String, String>();
  m4["key1"] = "Value1";
  m4["key2"] = "Value2";
  m4["key3"] = "Value3";

  Map<String, dynamic> m5 = {
    "sID": 3243432435,
    "acces-token": "skdforjtor12323.ytu",
    "emailVerify": true,
    "oldUserData": false,
  };
  print("$m5");
}
