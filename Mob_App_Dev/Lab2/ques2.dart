// Create a set of fruits and print all fruits using a loop.
void main(){

  Set fruits = <String>{"Lemon","Kera", " Grape","Banana"};  
  fruits.add("Mango");

  printSet(fruits);

}

void printSet(Set stt){
  int i = 0;
  while(i < stt.length){
    print(stt.elementAt(i));
    i++;
  }
}