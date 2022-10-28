import 'dart:io';

enum Days { Pazartesi, Sali, Carsamba, Persembe, Cuma, Cumartesi, Pazar }

void main(List<String> args) {
  print("Lütfen günü belirtiniz");
  Days selectedDay = Days.Cumartesi;

  if (selectedDay == Days.Cumartesi || selectedDay == Days.Pazar) {
    print("Tatil");
  } else {
    print("Tatil değil");
  }
}
