class Arithmetic {
// create singleton class
  static final Arithmetic _instance = Arithmetic._internal();

// Private constructor
  Arithmetic._internal();

  factory Arithmetic() {
    return _instance;
  }

  int add(int first, int second) {
    return first + second;
  }

  int sub(int first, int second) {
    return first - second;
  }
}

void main() {
  Arithmetic arithmetic = Arithmetic();
  print(arithmetic.add(2, 3));

  Arithmetic arithmetic2 = Arithmetic();
  print(arithmetic2.sub(3, 2));
  
}
