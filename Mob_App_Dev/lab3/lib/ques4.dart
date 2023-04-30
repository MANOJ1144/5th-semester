// 4. Write a dart program to create a class Camera with private properties [id, brand, color, prize]. 
//Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.

class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;
  
  Camera(this._id, this._brand, this._color, this._price);
  
  int get id => _id;
  set id(int value) => _id = value;
  
  String get brand => _brand;
  set brand(String value) => _brand = value;
  
  String get color => _color;
  set color(String value) => _color = value;
  
  double get price => _price;
  set price(double value) => _price = value;

  void printDetails() {
    print("ID: $_id");
    print("Brand: $_brand");
    print("Color: $_color");
    print("Price: \$_$_price");
  }
}
void main() {
  Camera camera1 = Camera(1, "Canon", "Black", 50000.0);
  camera1.printDetails();
  print(" ");
  
  Camera camera2 = Camera(2, "Nikon", "Silver", 80000.0);
  camera2.color = "Red";
  camera2.printDetails();
  print("   ");
  
  Camera camera3 = Camera(3, "Sony", "White", 1200000.0);
  camera3.price = 1000.0;
  camera3.printDetails();
}