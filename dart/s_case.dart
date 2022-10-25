void main() {
  final int classDegree = 85;
  bool isSucces = false;

  const int succesValueHigh = 100;
  const int succesValueHigh2 = 85;
  const int succesValueHigh3 = 70;
  const int succesValueHigh4 = 50;
  const int succesValueHigh5 = 30;
  const int succesValueHigh6 = 15;

  switch (classDegree) {
    case succesValueHigh:
      print('AA');
      isSucces = true;
      break;
    case succesValueHigh2:
      print('BA');
      isSucces = true;
      break;
    case succesValueHigh3:
      print('BB');
      isSucces = true;
      break;
    case succesValueHigh4:
      print('CB');
      isSucces = true;
      break;
    case succesValueHigh5:
      print('CC');
      isSucces = true;
      break;
    case succesValueHigh6:
      print('DD');
      isSucces = true;
      break;
    default:
      print('başarısız');
      isSucces = false;
  }
}
