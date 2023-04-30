import 'dart:io';


// stdn library is used to take input from user.

//   1. write a program to calculate simple interest using a named function.

void main() {
  // Take input from the user
  print('Enter the Principal amount:');
  var principal = double.parse(stdin.readLineSync()!);
  
  print('Enter the rate of interest:');
  var rate = double.parse(stdin.readLineSync()!);
  
  print('Enter the time period in years:');
  var time = double.parse(stdin.readLineSync()!);
  
  // Calculate the simple interest using a named function
  var interest = calculateSimpleInterest(principal, rate, time);
  
  // Display the result
    
  print('The simple interest is: $interest');
}

double calculateSimpleInterest(double principal, double rate, double time) {
  return (principal * rate * time) / 100;
}
    



// 2. write a program to calculate area of circle using an optional function.

// void main() {
//   // Take input from user
//   print('Enter the radius of the circle:');
//   var radius = double.parse(stdin.readLineSync()!);
  
//   // Calculate the area of the circle using an optional function
//   var area = calculateAreaOfCircle(radius);
  
//   // Display the result
//   print('The area of the circle is: $area');
// }

// double calculateAreaOfCircle(double radius, [double pi = 3.14]) {
//   return pi * radius * radius;
// }




// 3. write a program to calculate to calculate fahrenheit to celcius

//   void main() {
//   // Take input from user
//   print('Enter the temperature in Fahrenheit:');
//   var fahrenheit = double.parse(stdin.readLineSync()!);
  
//   // Convert Fahrenheit to Celsius
//   var celsius = (fahrenheit - 32) * 5 / 9;
  
//   // Display the result
//   print('$fahrenheit degrees Fahrenheit is equal to $celsius degrees Celsius.');
// }

