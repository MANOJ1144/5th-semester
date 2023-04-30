// Create a map with a name, and phone keys and store some values. Use where to find all keys that have length 4.

void main() {
  Map<String, int> mapNamePhone = {};

  mapNamePhone["Adi"] = 134;
  mapNamePhone["Man"] = 189;
  mapNamePhone["Bhup"] = 173;
  mapNamePhone["Jhup"] = 69;

  var result = mapNamePhone.values.where((x) => x.toString().length == 4);

  print(result);
}