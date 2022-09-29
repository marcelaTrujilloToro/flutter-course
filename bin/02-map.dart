void main(List<String> args) {
  //estructura similar al JSON
  //se utiliza la clase MAP
  //crear map
  Map<String, String> users = {};
  //[llave]=valor
  //agregar elementos al map
  users["user1"] = "Marcela";
  print(users);
  users["user2"] = "Zharick";
  print(users);
  users["user1"] = "Ada";
  print(users);

//eliminar element
  final removed = users.remove("user2");
  print("Removed $removed");
  print(users);

//eliminar todos los elementos dos metodos
  users = {};
  users.clear();
  print(users);

//agregar multiples elementos
  users.addAll({"user3": "Alana", "user4": "Zafiro", "user5": "Gatito"});
  print(users);

//------------------------

//crear Map con valores iniciales
  Map<int, String> products = {1: "Mackbook", 2: "Iphone"};
  //modificar el elememnto 1
  products[1] = "Mackbook pro";
  products[3] = "iPad";
  print(products);

  products.remove(2);
  print(products);

  //otra forma de crear un Map
  var productos = {
    1: "Cuaderno",
    2: 90.4,
  };
  print(productos);

  //otra forma de crear un Map
  var map = <int, String>{
    1: "Cuaderno",
    // 2: 90.4, ya no admite nada que no sea string
    2: "Celular"
  };
  print(map);

//recuper elemento mediante un clave si no existe se debe insertar

// forma 1
  if (products.containsKey(0) == false) {
    products[0] = "Mac mini";
  }
  print(products);

// forma 2
  products.putIfAbsent(5, () {
    return "Mouse";
  });
  print(products);

  //eliminar multiples elements
  products.removeWhere(
    (key, value) {
      return key == 0 || key == 1;
    },
  );
  print(products);

//retorna un iterable saber las claves de la lista, y convertirlos en lista 
  print(products.keys.toList());

//retorna un iterable de los valores y se convierte a lista
  print(products.values.toList());

}
