abstract class User {
  void login;
  void logout;
}

abstract class Student {
  void exam;
  void result;
}

abstract class Teacher {
  void calculateSalary();
  void classes();
}


class Kiran implements Teacher, Student{
  @override
  void exam;

  @override
  void result;

  @override
  void calculateSalary() {
  }

  @override
  void classes() {
  }

}