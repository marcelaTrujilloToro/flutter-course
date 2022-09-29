void main(List<String> args) {
  // final user = <String, Object>{
  final user = <String, dynamic>{
    "name": "Marcela",
    "apellido": "Trujillo",
    "age": 31,
    "email": "marces0410@hotmail.com",
    "location": {
      "country": "Colombia",
      "countryCode": 17000,
      "city": "Manizales",
    },
    "salary": 1350.40,
    "enabled": true,
    "pets": [
      {"name": "Alana", "age": 1},
      {"name": "Zafiro", "age": 2}
    ]
  };

  print(user.runtimeType);

  print("Age: ${user['age']}");
  print("Email: ${user['email']}");
  print("Location: ${user['location']}");

// con el tipo Object
  final location = user['location'];

  final country = (location as Map<String, Object>)['country'];
  print("Country: $country");

  //con el tipo dynamic
  print(user["location"]["country"]);

  print(user['pets'][0]);
  print(user['pets'][0]["name"]);

  //se puede manejar pets como una lista: para usar todos sus metodos
  final List<Map<String, Object>> pets = user['pets'];
  // final List<Map> pets = user['pets']; es lo mismo solo que arriba e especifica mas los tipos
  print(pets.length);

  // spread operator
  List<int> numbers = [1, 2, 3, 4, 5];
  //...numbers destructuramos la lista
  numbers = [...numbers, 10, 20];
  print(numbers);
  numbers = [30, 40, ...numbers];

  Map<String, dynamic> json = {
    "name": "Marcela",
    "lastName": "Trujillo",
  };

  print(json);

//destructuramos para añadir mas propiedades 
  json = {
    ...json,
    "age": 31,
    "ciudad": "Manizales"
  };
  print(json);
}
