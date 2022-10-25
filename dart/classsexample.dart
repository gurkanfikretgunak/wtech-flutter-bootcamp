

void main(List<String> args) {

  var x = new person("Muhamed","Şen", 23);
  print(x.isim);
  print(x.soyisim);
  print(x.yas);
  
}

class person{
  String isim;
  String soyisim;
  int yas;

  person(this.isim, this.soyisim, this.yas);
}