void main(List<String> args) {
  salaryCalculate(10001);
}

void salaryCalculate(int salary) {
  if(salary < 10000) {
    print("Salary Less Than 10000.");
  }
  else {
    print("Salary Greater Than 10000.");
  }
}