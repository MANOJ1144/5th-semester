// Add your 7 friend names to the list. Use where to find a name that starts with the alphabet a.

void main() {
  List<String> lst = [];

  lst.add("man");
  lst.add("Aadarsh");
  lst.add("bhup");
  lst.add("jhup");
  lst.add("dhup");
  lst.add("chup");
  lst.add("kira");

  var result = lst.where((x) => x[0].toLowerCase() == "a");

  print("Name starting with a are : $result.}");
}