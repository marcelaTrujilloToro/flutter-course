import 'package:hello_world/hello_world.dart' as hello_world;

void main(List<String> arguments) {
  print('Hello world: ${hello_world.calculate()}!');

  /*
Datos primitivos

int
double
bool
String

Datos dinamicos 
  pueden cambiar en tiempo de ejecucion de

Instancias de clases 
*/

// Datos primitivos
  int age = 2;
  double price = 1.2;
  bool enabled = false;
  String firstName = "Marcela",
      lastname = "Trujillo"; // multiples variables del mismo tipo

  var alias = "marcela";
  var counter = 0.2;
  var isReady = true;

  alias = "zharick";
  price = 90;

  print(alias);

  //Datos dinamicos

  dynamic dynamicValue = "Dinamico";
  print(dynamicValue.runtimeType);

  dynamicValue = 10;
  print(dynamicValue.runtimeType);

  dynamicValue = false;
  print(dynamicValue.runtimeType);

//concatenación
  String nombre = "Marcela";
  String apellido = "Trujillo";
  int edad = 31;

  String nombreCompleto = nombre + " " + apellido + ' edad: ' + edad.toString();
  print(nombreCompleto);

  String nombreComp =
      '$nombre $apellido, edad: $edad, lenght: ${apellido.length}, contiene: ${nombre.contains('m')}, "Hola" ';
  print(nombreComp);

  // datos inmutables tipo FINAL
  final String pet = "Alana"; // no es necesario asignar el tipo de dato
  // pet = "zafiro";
  final mascota = "Zafiro";

  // datos inmutables tipo CONSTANTE: el valor debe serasignado antes de compilar
  const int limit = 100;
  // limit = 200;

  // la direfencia es el rendimiento,
  //  cuando se sabe de antemano el valor de un dato
  // cuando se este compilanado la aplicacion ya se tiene el dato (lo que lo hace mas rapido)

//listas:
  List<int> numbers = [1, 2];
  var numeros = <int>[]; // otra forma de definir listas

  final otros = <int>[4, 5, 6, 7, 8];

//agregar elementos a la lista
  print(numbers);
  numbers.add(3);
  print(numbers);

//agregar una lista a otra
  numbers.addAll(otros);
  print(numbers);

  //reemover un elemento en especifico se le pasa la posicion
  numbers.removeAt(0);
  print(numbers);

//eliminar el ultimo
  numbers.removeLast();
  print(numbers);

//eliminar el elemento por elemento no por posicion
  numbers.remove(3);
  print(numbers);

  //eliminar multiples elementos de la lista sgun la funcion que se le pase (con el filtro no se modifican los elementos)
  numbers.removeWhere((element) => element % 2 == 0);
  print(numbers);

//limpiar la lista
  numbers.clear();
  print(numbers);

  final names = <String>[];
  names.add("Alana");
  print(names);
  names.addAll(["Zafiro", "Ada", "Zafiro", "Zharick"]);
  print(names);
  names.remove("Zafiro");
  print(names);
  names.removeWhere((element) => element == "Zafiro");
  print(names);
  //remover en posicion exacta
  // names.removeAt(10);

  //saber la posicion
  final index = names.indexWhere((element) => element == "Zharick");
  // si el elemento no existe retorna -1
  print(index);

  final index2 = names.indexOf("Ada");
  print(index2);

  final filtered = names.where((element) => element.startsWith("A"));
  //retorna una nueva lista, no modifica la original
  print("Filtered $filtered");
  print("Names $names");

  //retorna el ultimo elelemnto de la lista que coincida
  final filteredLast = names.lastWhere((element) => element.startsWith("A"));
  print("Filtered last $filteredLast");

  // en caso de que no encuentre el valor de la busqueda se crashea, para evitar esto:

  final filtrado = names.lastWhere(
    (element) => element.startsWith("A2345"),
    orElse: () => "Nada coincide",
  );
  print("Filtrado $filtrado");

//toList devuelve una lista con lo que cumple con la condicion
  final filtrado2 = names
      .where(
        (element) => element.startsWith("A"),
      )
      .toList();
  print("Filtrado2 $filtrado2");

//------------------------------------------------------------------------------------------------
  const lulu = Pet();
}

class Pet {
  // constructor debe iniciar con conts
  const Pet();
}
