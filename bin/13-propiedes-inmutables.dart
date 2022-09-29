import 'package:hello_world/models/pet2.dart';

void main(List<String> args) {
  Pet alana = Pet(
    name: "alana",
    age: 1,
  );
  print(alana);

//modificar las propiedades de una clase privada
  alana = alana.copyWith(name: 'Gatita bebe');

  print(alana);
}

String gerRandomName() {
  return "holiii";
}
