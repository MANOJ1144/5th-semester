// Write a dart program to print 1 to 100 but not 41.
// void main() {
//   for (int i = 1; i <= 100; i++) {
//     if (i == 41) {
//       continue; // skip printing 41
//     }
//     print(i);
//   }
// }

void main() {
  not41();
}

void not41() {
  int i = 1;
  while (i <= 100) {
    if (i != 41) {
      print(i);
    }
    i++;
  }
}