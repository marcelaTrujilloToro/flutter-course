//asi no es posible crear una instacia de la clase pet
abstract class Pet {
  final String name;
  final int age;

  const Pet({
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return "name: $name, age: $age";
  }

// al ser una funcion sin cuerpo en las clases hijas se debe sobreescribir
  void sleep();
}

class Dog extends Pet {
  final int legs;

  Dog({
    required String name,
    required int age,
    required this.legs, // no se pasa en el super, por que es una propiedad exclusiva para dog
  }) : super(
          //inicializar los valores de la clase padre (cuando se usa el extends)
          name: name,
          age: age,
        );

  void run() {
    print("Running");
  }

  void jump() {
    print("Jumpping");
  }


  @override
  void sleep() {
    print("Sleep dog");
  }
}

class Fish extends Pet {
  final int fins;
  Fish({
    required String name,
    required int age,
    required this.fins,
  }) : super(
          //inicializar los valores de la clase padre (cuando se usa el extends)
          name: name,
          age: age,
        );

  void swim() {
    print("Swimming");
  }

//sobreescribir el metodo sleep del padre
  @override
  void sleep() {
    print("Sleep fish");
  }

//usando metodos de la clase padre
  @override
  String toString() {
    return "${super.toString()}, fins: $fins";
  }
}
