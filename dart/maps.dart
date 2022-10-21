// Key ve datalar tüm variable'ları alabilir ama genelde String kullanılır.
void main(List<String> args) {
  var m1 = {"Key": "value"};
  var m2 = {1: "aaaa"};

  var m3 = Map<String, String>();
  m3["Key1"] = 'Value1';

// Value değerleri çoğu zaman dynamic oluyor
// Sunucudan datalar map olarak geliyor
  Map<String, dynamic> m4 = {
    "sID": "Value1",
    "acces-toke": "",
    "userName": "",
    "last-access-point": "",
    "oldUserData": false,
    "lastAccessPoint": [123, 322, 21],
    "documents": {"documentID": 1122323, "bucketLink": "https:/files.sample.com/userID/1122323"}
  };

  print("$m4");
}
