void main(List<String> args) {
  var m1 = {"Key": "Value"};
  var m2 = {1: "Value"};
  var m3 = {[]: "Value"};

  var m4 = Map<String, dynamic>();

  m4["key1"] = "Value1";
  m4["key2"] = "Value2";
  m4["key3"] = "Value3";

  Map<String, dynamic> m5 = {
    "sID": 945253920,
    "acces-token": "1432412321.dsafdsafa.1fdsfdsaf.1dsad",
    "userName": "ecemhacioglu",
    "emailVerify": true,
    "oldUserData": false,
    "last-access-point": [132, 24, 59],
    "documents": {
      "documentsID": 1234651,
      "bucketlink": "https://file.sample.com/userId/1234561"
    }
  };
  print("$m1,$m2,$m3,$m4,$m5");
}
