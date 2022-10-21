

void main(List<String> args) {
  
  String a = "ulas";
  int x = 1;

  if(a =="ulas"){
    print("ulasssss");
  }
  else{
    print(":(");
  }


  while (a == "ulas"){
    print("ulas");
    x++;

    if(x>=10){
      break;
    }
  }

asign(){};
bsign(){};
csign(){};
dsign(){};


  signSelect(String command){

    switch(command){
      case 'a':
      asign();
      break;
      case 'b': 
      bsign();
      break;
      case 'c': 
      csign();
      break;
      default: 
      dsign();
    }
  }

}