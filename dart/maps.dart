void main(List<String> args) {
  var m1 = {"Key": "Value"};
  var m2 = {1: "Value"};
  var m3 = {"[]": "Value"};

  Map<String, int> notlarim = {
    "İngilizce": 78,
    "Matematik": 99,
    "Beden Eğitimi": 100,
  };

  print(notlarim);

  print(notlarim["İngilizce"]);
}
