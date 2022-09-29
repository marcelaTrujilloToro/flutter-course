void main(List<String> args) {
  // final currentDate = DateTime.now();
  // final weekDay = currentDate.weekday;

  final weekDay = DateTime.now().weekday;

  switch (weekDay) {
    case 1:
      print("Lunes");
      break;
    case 2:
      print("Martes");
      break;
    case 3:
      print("Miercoles");
      break;
    case 4:
      print("Jueves");
      break;
    case 5:
      print("Viernes");
      break;
    case 6:
      print("Sabado");
      break;
    case 7:
      print("Domingo");
      break;
    default:
      print("Invalid day");
  }

  switch (weekDay) {
    case 2:
    case 3:
    case 4:
      print("Working day");
      break;

    case 6:
    case 7:
      print("Half day");
      break;
    default:
  }
}
