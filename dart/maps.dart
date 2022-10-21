void main(List<String> args) {
  var m1 = {"Key": "Value"};
  var m2 = {1: "Value"};
  var m3 = {[]: "Value"};

  var m4 = Map<String, dynamic>();

  m4["Key1"] = "Value";
  m4["Key2"] = "Value";
  m4["Key3"] = "Value";

  Map<String, dynamic> m5 = {
    "sID": 1364748,
    "access-token": "2asdsd5asd5a5fad",
    "userName": "bahar",
    "emailVerify": true,
    "oldUserData": false,
    "last-access-point": [82, 27, 79],
    "documents": {
      "documentID": 1213565,
      "bucketLink": "https://file.sample.com/userID/1213565",
    }
  };

  print("$m1, $m2, $m3, $m4, $m5");
}
