//classlar içinde oluşturulan örnek değişkenlerin değerlerini kaydetmek veya o değerleri okumak için kullanılan yapılardır
//getter: okuyucu
//Setter: kaydedici

void main(List<String> args) {
  Student student1 = Student();
  student1.name =
      "Emine"; //bu setter sayesinde mümkün oldu. özel olarak oluşturmasakta default olarak oluşturulmuş setter getter yapıları var
  print("Öğrenci adı: ${student1.name}"); //getter

  Students student2 = Students();
  student2.success = 5;
  print("Öğrenci yüzdesi: ${student2.success}");
}

class Student {
  String? name;
}

class Students {
  String? name1;
  int? percent;

  set success(int puan) {
    var score;
    if (score > 10)
      int? score = 10;
    else if (score < 0) score = 0;

    percent = score * 10;
  }

  int get success {
    return percent!;
  }
}
