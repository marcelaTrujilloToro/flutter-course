import 'package:hello_world/models/pet.dart';

void main(List<String> args) {
  final alana = Pet(
    name: "alana",
    age: 1,
  );

// no es posible modificar los valores
  alana.name;

  print(alana.name);

//modificar con void
  alana.setName('gordita');
  print(alana.name);

  print(alana.updateAt);
  
  alana.age = 2;
  print(alana.age);
  print(alana.updateAt);

}
