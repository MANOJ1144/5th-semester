// first name, last name, age, address
// Singleton

import '../class3/inheritance.dart';

class Student {
  String? fname;
  String? lname;
  int? age;
  String? address;

  Student({this.fname, this.lname, this.age, this.address});

  @override
  String toString() {
    return 'fname : $fname, lname: $lname, age: $age, address: $address';
  }

// CopyWith

  Student copyWith({String? fname, String? lname, int? age, String? address}) {
    return Student(
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        age: age ?? this.age,
        address: address ?? this.address);
  }
}

void main() {
//   Student s1 = Student(fname: "Kiran", lname: "Rana", age: 32, address: "KTM");
//   Student s2 =
//       Student(fname: "Raj", lname: "Oli", age: 23, address: "Nepalgunj");
//   Student s3 = Student(fname: "Dk", lname: "YD", age: 13, address: "Pokhara");

// // Copywith lname changed
//   Student s4 = s1.copyWith(lname: "Khadka");
//   Student s5 = Student(fname: "Raj", lname: "DK", age: 24, address: "KTM");

//   print(s1);
//   print( " ");

//   print(s2);
//   print(" ");

//   print(s3);
//   print(" ");

//   print(s4);
//   print(" ");

//   print(s5);
//   print(" ");

  final student1 = Student(fname: "Raj", lname: "oli", age: 23, address: "KTM");
  final student2 = Student(fname: "aj", lname: "oli", age: 23, address: "KTM");
  final student3 = Student(fname: "Rj", lname: "oli", age: 23, address: "KTM");
  final student4 =
      Student(fname: "Bhup", lname: "oli", age: 23, address: "KTM");
  final student5 =
      Student(fname: "Jhup", lname: "oli", age: 23, address: "KTM");

// Add student to list
  List<Student> lstPerson = [student1, student2, student3, student4, student5];
  // lstPerson.add(student1);
  // lstPerson.add(student2);
  // lstPerson.add(student3);
  // lstPerson.add(student4);
  // lstPerson.add(student5);
  for (Student s in lstPerson) {
    print("Name : ${s.fname} and Age: ${s.age}");
  }
}
