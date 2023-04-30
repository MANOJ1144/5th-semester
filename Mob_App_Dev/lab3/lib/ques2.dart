// 2. Write a dart program to create a class House with properties [id, name, prize].
// Create a constructor of it and create 3 objects of it. Add them to the list and
// print all the details.

class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void printDetails() {
    print('House ID: $id');
    print('House Name: $name');
    print('House Price: \$$price');
  }
}

void main() {
  List<House> houses = [];

  var house1 = House(11, "Oli niwas", 20000000);
  var house2 = House(11, "Bhandari residence", 50000000);
  var house3 = House(11, "Raj Mahal", 30000000);

  houses.add(house1);
  houses.add(house2);
  houses.add(house3);

  for (House house in houses) {
    house.printDetails();
    print(" ");
  }
}
