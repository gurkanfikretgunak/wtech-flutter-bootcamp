void main(List<String> args) {
  var m1 = {"Key": "Value"};
  var m2 = {1: "Value"};
  var m3 = {[]: "Value"};

  var m4 = Map<String, String>();
  m4["Key1"] = "Value1";
  m4["Key2"] = "Value2";
  m4["Key3"] = "Value3";

  Map<String, dynamic> m5 = {
    "sID": 987654321,
    "access-token": "12345555545.1asadsas.1asasda",
    "userName": "eminealtuntas",
    "emailVerify": true,
    "oldUserData": false,
    "last-access-point": [132, 24, 59],
    "documents": {
      "documentID": 12121212,
      "bucketLink": "https://file.sample.com/userId/12121212"
    }
  };

  print("$m1, $m3, $m4, $m5");
}
