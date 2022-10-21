void main(List<String> args) {
  var m1 = {'Key': 'value'};
  var m2 = {1: 'value'};
  var m3 = {[]: 'value'};
  //Sunucudan gelen değere göre mapin typelarını belirleyebiliriz.
  var m4 = Map<String, dynamic>();
  m4['Key1'] = 'value1';
  m4['Key2'] = 'value2';
  m4['Key3'] = 'value3';

  Map<String, dynamic> m5 = {
    'uid': 123456789,
    'access-token': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9',
    'userName': 'melihcelik09',
    'emailVerify': true,
    'oldUserData': false,
    'last-access-point': [132, 24, 59],
    'documents': {
      'documentID': 4566485645432,
      'bucketLink': 'https://file.sample.com',
    }
  };
  print(m5);
}
