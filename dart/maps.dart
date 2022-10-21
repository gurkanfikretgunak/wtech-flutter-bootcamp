void main(List<String> args) {



  var m1={"Key":"Value"};
  var m2={1:"Value"};
  var m3={[]:"Value"};

  var m4= Map<String,dynamic>();

  m4["Key1"] = "Value1";
  m4["Key2"] = "Value2";
  m4["Key3"] = "Value3";

Map<String, dynamic>m5 = {
  "sID":"49034595",
  "access-token":"12323asdaık234qoq",
  "username":"aslinazdayi",
  "emailVerify":true,
  "oldUserData":false,
  "last-access-point":[123,24,14],
  "documents": {
    "documentID":123123,
    "bucketLink":"https://file.sample.com/userId/123123"
  }
};

  print("$m1,$m2,$m3,$m4,$m5");
}