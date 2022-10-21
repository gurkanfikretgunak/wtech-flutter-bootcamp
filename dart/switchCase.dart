void main(List<String> args) {
  double weight = 88;
  double height = 1.87;
  double bmi = weight / (height * height);
  calculateBMI(bmi);
}

calculateBMI(double bmi) {
  if (bmi < 18.5) {
    print("Underweight $bmi");
  } else if (bmi >= 18.5 && bmi < 25) {
    print("Normal");
  } else if (bmi >= 25 && bmi < 30) {
    print("Overweight $bmi");
  } else {
    print("Obese $bmi");
  }
}
