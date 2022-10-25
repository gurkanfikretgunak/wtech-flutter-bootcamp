
void main(List<String> args) {
  
   var al = new alan(5);
   print(al.hesap());
   print(al.cevre());
}

class alan{
  int yaricap;
  int pi = 3;

  
  alan(this.yaricap);

  hesap(){
    int area = (yaricap*yaricap)*3;
    return "Çemberin Alanı: $area";
  }
  cevre(){
    int cevreHesap = (2*yaricap)*3;
    return "Çemberin Çevresi: $cevreHesap";
  }
}