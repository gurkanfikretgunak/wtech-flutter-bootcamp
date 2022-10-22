void main() {
  for(var i = 0; i <= 10; i++){
      print("i = $i");
  }

  List list = ["ecem","hacıoğlu","android", "flutter", "dart"];

  for(String a in list){
    print("$a");
  }

  for(int i=0; i < list.length; i++){
    print("list item = "+ list[i]);
  }
}