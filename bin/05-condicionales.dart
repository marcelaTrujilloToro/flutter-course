void main(List<String> args) {
  final weekDay = 7;
  final days = 10;

  if (weekDay >= 1 && weekDay <= 7) {
    if (days >= 30 && (weekDay == 6 || weekDay == 7)) {
      print("Day off 🥳");
    } else {
      print("🥵");
    }
  } else {
    print("Invalid date");
  }

  print("--------------------");


  final price1 = 50.99, price2 = 9.99;

  if (price1 == price2) {
    print("equals");
  }else{
    print("diferents");
  }

  //operador de negacion
  final areEquals = price1 == price2;
  print(!areEquals);

  if (!areEquals) {
    print("false");
  }

}
