import 'practice_employee.dart';

class Employee {
  String employeeName;
  String nationalId;
  String employeeGender;
  int availableVacation;
  int availablePermissionHours;
  double actualSalary;

  static double salary = 1500;
  static double deductionPerDay = 85.5;
  static double deductionPerHours = 15.5;

  Employee(this.employeeName, this.nationalId, this.employeeGender) {
    availablePermissionHours = 20;
    availableVacation = 15;
    actualSalary = salary;
  }

  Employee.init() {
    employeeName = '';
    employeeGender = '';
    nationalId = '';
    availablePermissionHours = 20;
    availableVacation = 15;
    actualSalary = salary;
  }
  void view(){
    print('name : $employeeName');
    print('national ID : $nationalId');
    print('actual salary : $actualSalary');
  }
  void viewDetailed(){
    view();
    print('employee gender : $employeeGender');
    print('available permissions per hour $availablePermissionHours');
    print('available vacation : $availableVacation');
  }
  void takeVacation(int numberOfDays){
    availableVacation-=numberOfDays;
    if(availableVacation < 0){
      //calculate salary
      calculateSalary();
    }
  }
  void takePermissionsPerHour(int numberOfHours){
    availablePermissionHours -= numberOfHours;
    if(availablePermissionHours<0){
      //calculate salary
      calculateSalary();
    }
  }

  double calculateSalary(){
    actualSalary = salary;
    if(availableVacation <0){
      //negative numbers
      double deduction = availableVacation * deductionPerDay; //-1 *85.5
      actualSalary+=deduction;
    }if(availablePermissionHours<0){
      double deduction = availablePermissionHours * deductionPerHours;
      actualSalary+=deduction;
    }
    return actualSalary;
  }
}
void main(){
  Employee employee = Employee('mariam', '1234', 'female');
  employee.viewDetailed();

  print('----------------');

  employee.takeVacation(16);
  employee.viewDetailed();

  print('----------------');

  employee.takePermissionsPerHour(20);
  employee.viewDetailed();

}
