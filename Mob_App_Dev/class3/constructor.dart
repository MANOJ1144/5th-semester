class Arithmetic {
  int num1;
  int num2;

// Constructor
  Arithmetic(this.num1, this.num2);

// 2.another method
// constructor overloading
  Arithmetic.withoutFirst(this.num2) : num1 = 0;
  Arithmetic.withoutSecond(this.num1) : num2 = 0;

// Method
  int multiply() {
    return num1 * num2;
  }

  // int sum() {
  //   return num1 + num2;
  // }

  int add() => num1 + num2;
}

// void main() {
//   Arithmetic arithmetic = Arithmetic(10, 20);
//   arithmetic.num2 = 30;
//   print(arithmetic.add());
// }


// 2. after constructor over loading
void main() {
  var arithmetic = Arithmetic.withoutFirst(3);
  print(arithmetic.add());
}
