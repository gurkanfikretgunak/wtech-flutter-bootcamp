void main(List<String> args) {
  var m1 = {"Key": "Value"};
  var m2 = {1: "Value"};
  var m3 = {[]: "Value"};

  var m4 = Map<String, String>();

  m4['Key1'] = "Value1";
  m4['Key2'] = "Value2";
  m4['Key3'] = "Value3";

  Map<String, dynamic> m5 = {
    "sID": "49846546464",
    "acces-token": "64+56446adsf654456dsf65",
    "userName": "derinonursahin", //single object
    "emailVerify": true,
    "oldUserData": false,
    "last-access-point": [173, 23, 58], //multi object
    "documents": {
      "documentID": 12313213,
      "bucketLink": "https://file.sample.com/userID/12313213"
    }
  };

  print(m4);
}
