class Arithmetic {
  int? num1;
  int? num2;
 

  // Named constructor
  // required for compulsory
  Arithmetic({required this.num1, required this.num2});

  // Method
  int multiply() => num1 ?? 1 * (num2 ?? 1);

  int sum() => num1 ?? 0 + (num2 ?? 1);

}

void main() {
  var arithmetic = Arithmetic(num1: 5, num2: 5);
  print(arithmetic.sum());
}
