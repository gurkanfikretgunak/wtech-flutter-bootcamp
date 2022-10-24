enum EducationStatus {
  HighSchool,
  Bachelor,
  Master,
  Doctorate,
}

void main(List<String> args) {
  var list = [];

  list.addAll(EducationStatus.values);

  /*for(int i = 0; i < list.length; i++) {
    print(list[i].toString().split('.').elementAt(1));
  }*/

  EducationStatus.values.forEach((a) => print(a.toString().split('.').elementAt(1)));
}