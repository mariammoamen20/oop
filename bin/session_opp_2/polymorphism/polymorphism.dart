import '../../session_oop_1/practice_employee.dart';

class Employee {
  //base class - super class - parent class
  int id;
  String name;
  double salary;

  Employee(this.id, this.name, this.salary) {
    //print('parent');
  }

  //Employee();
  void view() {
    print('-------------');
    print('id $id');
    print('name $name');
    print('salary $salary');
  }

  double calculateSalary() {
    return 0;
  }
}

class Developer extends Employee {
  String framework;

  Developer(int id, String name, double salary, this.framework)
      : super(id, name, salary); //call super constructor

  @override
  void view() {
    super.view(); //parent function
    print('framework $framework');
  }

  @override
  double calculateSalary() {
    return salary + (salary * 0.25);
  }
}

class Accountant extends Employee {
  bool certifiedExel;

  Accountant(int id, String name, double salary, this.certifiedExel)
      : super(id, name, salary);

  @override
  void view() {
    super.view(); //parent function
    print('certified exel $certifiedExel');
  }

  @override
  double calculateSalary() {
    return salary - (salary * 0.25);
  }
}

void printSalaries(List<Developer> dev, List<Accountant> accoun) {
  for (int i = 0; i < dev.length; i++) {
    print(' ${dev[i].name} ---- ${dev[i].salary}');
  }
  print('---------------------------');
  for (int i = 0; i < accoun.length; i++) {
    print(' ${accoun[i].name} ----- ${accoun[i].salary}');
  }
}

void printSalariesV2(List<Employee> allEmps) {
  for (int i = 0; i < allEmps.length; i++) {
    print(' ${allEmps[i].name} ---- ${allEmps[i].salary}');
  }
  print('----------------');
}

void main() {
  List<Developer> developer = [
    Developer(10, 'mariam', 5000, 'flutter'),
    Developer(10, 'mariam', 6000, 'flutter'),
    Developer(10, 'mariam', 7000, 'flutter'),
    Developer(10, 'mariam', 8000, 'flutter'),
  ];

  List<Accountant> accountant = [
    Accountant(20, 'mariam', 9000, true),
    Accountant(20, 'mariam', 1000, true),
    Accountant(20, 'mariam', 11000, true),
    Accountant(20, 'mariam', 12000, true),
  ];
  printSalaries(developer, accountant);
  print('---------------------------');
  //polymorphism
  List<Employee> allEmps = [
    Developer(10, 'mariam', 5000, 'flutter'),
    Developer(20, 'menna', 6000, 'flutter'),
    Developer(30, 'anas', 7000, 'flutter'),
    Developer(40, 'ahmed', 8000, 'flutter'),
    Accountant(50, 'lams', 9000, true),
    Accountant(60, 'youssef', 1000, true),
    Accountant(70, 'jody', 11000, true),
    Accountant(80, 'jana', 12000, true),
  ];
  printSalariesV2(allEmps);
}
