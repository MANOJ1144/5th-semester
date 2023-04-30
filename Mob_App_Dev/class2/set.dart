void main() {
  Map NepalitoEnglish = Map<String, dynamic>();
  NepalitoEnglish['Namaste'] = 'Welcome';
  NepalitoEnglish['Aaija'] = 'Come';
  NepalitoEnglish['Khau'] = 'eat';

  String searchValue = "Aaija";
  print("$searchValue is ${NepalitoEnglish[searchValue]} in English");
}
