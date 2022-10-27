void main(){
  for(var i=1;i<=10;i=i+2){
    print(i);
  }
  
 
  var products =["laptop","mouse","keyboard"];
  
  for(var i=0;i<products.length;i++){
    print(products[i]);
  }
  
  for (var product in products){
    print(product);
  }
  
  int sayi=1;
  while(sayi<=10){
    print(sayi);
    sayi++;
  }
  
  var sayi2=10;
  do{
    print("sayı 2 ="+sayi2.toString());
    sayi2++;
   
  }while(sayi2>1000);
}