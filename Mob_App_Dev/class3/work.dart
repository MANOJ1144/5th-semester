// // Write a program that creates a parent class named faculty with attributes such as full name,
// // age and address. Then create two sub class named Part-time faculty and Full time faculty which
// // inherit from the faculty class.
// // Part-time attribute : hourly salary
// // full-time attribute: monthly salary
// // and calculate yearly salary of both faculties

// class Faculty {
//   String fullname;
//   int age;
//   String address;

//   Faculty(this.fullname, this.address, this.age);

//   void calculateYearlySalary() {}
//   void displayDetails;
// }

// class Parttimefaculty extends Faculty {
//   double hourlySalary;

//   Parttimefaculty(String fullname, int age, String address, this.hourlySalary)
//       : super(fullname, age, address);

//   @override
//   void calculateYearlySalary() {
//     print("Yearly Salary: ${hourlySalary * 12 * 20}");
//   }
// }

// class Fulltimefaculty extends Faculty {
//   double YearlySalary;
// }

// void main() {
//   Parttimefaculty parttimefaculty = Parttimefaculty("Kiran", 33, "KTM", 1000);
//   Parttimefaculty fulltimefaculty = Parttimefaculty("Achyut", 58, "KTM", 100);

//   parttimefaculty.displayDetails();
//   parttimefaculty.calculateYearlySalary();

//   fulltimefaculty.displayDetails();
//   fulltimefaculty.calculateYearlySalary();
// }
