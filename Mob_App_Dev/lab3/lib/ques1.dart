// 1. Write a dart program to create a class Laptop with properties [id, name, ram]
//and create 3 objects of it and print all details.

class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void printDetails() {
    print('Laptop ID: $id');
    print('Laptop Name: $name');
    print('Ram in GB: $ram');
  }
}

void main() {
  var laptop1 = Laptop(212, "Inspire", 512);
  var laptop2 = Laptop(111, "Dell", 1024);
  var laptop3 = Laptop(524, "Nitro", 212);

  laptop1.printDetails();
  print("  ");
  laptop2.printDetails();
  print("  ");

  laptop3.printDetails();
  print("  ");

}
