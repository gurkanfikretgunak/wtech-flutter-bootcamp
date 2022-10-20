

// there are 3 number types     integer,double,NaN

import 'dart:ffi';

void main(List<String> args) {
  
  int u1 = 1;
  int u2 = -2;
  int u4 = 0;
  // int u5 = null;   cant do tthat
  int u5 = 0xFF01A123;  
  double d1 = 1.0;
  double d2 = 1.21e5;

  // int u5 =35.toString(); 

  print(d2.toString());

  print("$u1$u2$u4$u5$d1$d2");

}