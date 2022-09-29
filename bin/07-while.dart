void main(List<String> args) {
  int index = 10;

  while (index < 100) {
    print(index);
    if (index % 70 == 0) {
      print("🐭");
      break;
    }

    // index = index + 1;
    // index +=1;
    index++;
  }
  print("☠️");

  do {
    print(index);
    index++;
    if (index == 50) {
      break;
    }
  } while (index < 100);
  print("☠️");
}
