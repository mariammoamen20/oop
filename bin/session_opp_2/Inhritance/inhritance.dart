import '../../session_oop_1/practice_employee.dart';

class Employee {
  //base class - super class - parent class
  int id;
  String name;
  double salary;

  Employee(this.id, this.name, this.salary) {
    print('parent');
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
  //drive class - sub class - child class
  String framework;

  Developer(int id, String name, double salary, this.framework)
      : super(id, name, salary) //call super constructor
  {
    print('developer child');
  }

  /* Developer(int id, String name, double salary, this.framework) {
    this.id = id;
    this.name = name;
    this.salary = salary;
  }*/

  /* void view() {
    print('framework $framework');
  }*/

/*  @override
  void view() {
    print('-------------');
    print('id $id');
    print('name $name');
    print('salary $salary');
    print('framework $framework');
  }*/
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
      : super(id, name, salary) {
    print('account child');
  }

/* void view() {
    print('certified excel $certifiedExel');
  }*/
/*  @override
  void view() {
    print('-------------');
    print('id $id');
    print('name $name');
    print('salary $salary');
    print('certified exel $certifiedExel');
  }*/
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


void main() {
  ///Inheritance
  Developer developer = Developer(10, 'mariam', 5000, 'flutter');
  developer.view();
  print('-------------');
  Accountant accountant = Accountant(20, 'mariam', 5000, true);
  accountant.view();


}
