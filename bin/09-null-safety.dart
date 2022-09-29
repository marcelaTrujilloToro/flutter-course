void main(List<String> args) {
//se agrega el ? cuando el valor puede ser null para que no crashee la app
  String? name;
  if (name != null) {
    print(name.length);
  }

  final n = name?.length;
  print(n);
  print(name);
}
