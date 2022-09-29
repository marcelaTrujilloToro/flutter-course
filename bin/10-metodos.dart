void main(List<String> args) {
  final birthdayAda = DateTime(1970, 4, 1);
  final birthdayMarce = DateTime(1991, 4, 10);
  print(
    calculateAge(
      
      precision: 1,
      round: true,
    ),
  );
  print(
    calculateAge(
      birthday: birthdayAda,
      precision: 1,
      round: false,
    ),
  );
  print(
    calculateAge(
      birthday: birthdayMarce,
      round: false,
    ),
  );
}

// si no queremos que la funcion retorne algo
// void calculate(){}

// si queremos que la funcion pueda retornar null
// double? calculate(){}

//trabajar con parametros de nombre
double calculateAge({
  // parametros opcionales le asignamos un valor por defecto
  DateTime? birthday,
  int precision = 2,
  required bool round,
}) {
  final current = DateTime.now();
  //operador null-aware (?? si el primera valor no es null toma ese sino el por defecto que se le este mandando)
  final days = current.difference(birthday ?? DateTime(2000, 3, 30)).inDays;
  final age = days / 365;

  //Null check operator
  // final days = age!.inDays; se pone la admiracion en el datoque podria ser nulo

  print(age);

  if (round) {
    return age.roundToDouble();
  }

  return double.parse(
    age.toStringAsFixed(precision),
  );
}


