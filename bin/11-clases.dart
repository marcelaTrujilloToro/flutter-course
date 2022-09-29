import 'dart:io';

void main(List<String> args) {
  //instancia de la clase: no es necesario añadir new
  // creacion con constructor
  final alana = Pet("Alana", 1);
  // creacion con constructor con parametros de nombre
  // final alana = Pet(name: "Alana", age: 1);


  print(alana);

  //hash code el valor el mismo aunque este en una variable diferente
  final a = "marce";
  final b = "marce";
  print(a.hashCode);
  print(b.hashCode);

  // pero si es una instancia de clase aunque tenga las mismas propiedades el hash code va a ser diferente
  // final alanaCopy = Pet();
  // alanaCopy.name = "Alana";
  // alanaCopy.age = 1;

  // print(alana.hashCode);
  // print(alanaCopy.hashCode);

  // print(alana == alanaCopy);

  final zafiro = Pet.fromBirthday('zafiro', '2020-11-08');

  print(zafiro);
  print(alana);
}

class Pet {
  // late indica que en otro momento se va a inicializar para no aceptar valores nulos
  late String name;
  late int age;

  //constructor para inicializar los atributos solo se puede tener un constructor por clase
  // Pet(this.name, this.age);

  Pet(this.name, this.age);
  // otra forma de inicializar
  // Pet({required this.name, required this.age});

  factory Pet.fromBirthday(String name, String birthdayAsString) {
//factory constructor
    final birthday = DateTime.parse(birthdayAsString);
    final currentDate = DateTime.now();

    final days = currentDate.difference(birthday).inDays;

    final age = (days / 365).round();

    return Pet(name, age);
  }

//sobreescribiendo el comportamenieto del operador de igualdad de la calse object
  //no es recomendable hacerlo manualmente, mejor utilizarlos paquetes:  equatable o freezed
  @override
  bool operator ==(Object other) {
    if (hashCode != other.hashCode) {
      return false;
    }
    if (other is Pet) {
      return other.name == name && other.age == age;
    }
    return false;
  }

  @override
  int get hashCode {
    return name.hashCode ^ age.hashCode;
  }

// ya no imprime instance of Pet sino como quisimos sobreescribirlo
  @override
  String toString() {
    return "name: ${name}, age: ${age}";
  }
}
