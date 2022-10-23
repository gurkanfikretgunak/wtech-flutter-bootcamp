void main(List<String> args) {
//if else
  int a = 5;

  if (a % 2 == 0) {
    print('Sayımız: $a ve çifttir');
  }

  if (a % 2 == 1) {
    print('Sayımız: $a ve tektir');
  }

// if-else ternary

  int sayi1 = 5;
  int sayi2 = 10;
  int? sayi3;

  sayi3 = sayi1 < sayi2 ? sayi2 : sayi1;
  print(sayi3);

//for
  var listemiz = ["ayse", "mustafa", "zeynep", "mehmet"];
  for (int i = 0; i < listemiz.length; i++) {
    print(listemiz[i]);
  }

  var listem = ["ayse", "mustafa", "zeynep", "mehmet"];
  for (var liste in listem) {
    print(liste);
  }

  void main() {
    for (int i = 0; i <= 10; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  }

//while
  String ismim = "emine altuntaş";

  int i = 0;

  while (i < 5) {
    i++;
    print(ismim);
  }

  //do while
  String isim = " emine altuntaş ";
  int p = 0;
  do {
    print(isim);
    p++;
  } while (p < 5);

  //break
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break; //i 5 ten büyük olunca döngüden çık.
    }
    print(i);
  }

//continue
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("i nin değeri  $i");
    } else {
      //i nin değeri 5 ten küçük olduğu durumda atlıyor
      continue;
    }
  }
}
