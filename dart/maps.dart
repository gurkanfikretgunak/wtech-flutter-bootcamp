void main(List<String> args) {
  Map m1 = {'Key': 'Value'};
  Map m2 = {1: 'Value'};
  Map m3 = {[]: 'Value'};

  Map m4 = Map<String, String>();
  m4['Key1'] = 'Value1';
  m4['Key2'] = 'Value2';
  m4['Key3'] = 'Value3';

  Map<String, dynamic> m5 = {
    'sID': 12321312312,
    'acces-token': '123123.1232.1231312',
    'userName': 'metecoban',
    'emailVerify': true,
    'oldUserData': false,
    'last-access-point': [123, 23, 07],
    'documents': {
      'documentID': 123213,
      'bucketLink': 'http://sample.com/userId/12321312312',
    }
  };

  print('$m1,$m2,$m3\n$m4\n$m5');
}
