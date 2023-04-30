void main() {
  checkError();
}

checkError() {
  String message = "Hello";

  try {
    // Print the character at position 5
    print(message[5]);
  } catch (e, stackTrace) {
    print('Error occurred : $e');
    print('Stack trace : $stackTrace');
  }
  print('i am executed');
}
