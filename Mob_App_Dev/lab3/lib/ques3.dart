// 3. Write a dart program to create a class Animal with properties [id, name, color].
// Create another class called Cat and extends it from Animal.
//Add new properties sound in String. Create an object of a Cat and print all details.

class Animal {
  int id;
  String name;
  var color;
  Animal(this.id, this.name, this.color);

  void printDetails() {
    print("Name: $name");
    print("ID: $id");
    print("Color: $color");
  }
}

class Cat extends Animal {
  String sound;
  Cat(int id, String name, var color, this.sound) : super(id, name, color);

  @override
  String toString() {
    return " Name: $name,ID: $id, Color: $color , Sound: $sound";
  }
}

void main() {
  var cat = Cat(11, "sus", "black", "meow");
  print(Cat);
  cat.printDetails();
  print(" ");
}
