// Write a dart program to check if the number is odd or even.

void main() {
  int number = 2;

  if(CheckNum(number))  {
    print('$number is even');
  }
  else{
    print('$number is odd');
  }
  }
  //Arrow function 
CheckNum(int number) => (number % 2 == 0);
