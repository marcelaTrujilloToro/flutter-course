void main(List<String> args) {
  final name = "marcela";

  for (var i = 0; i < name.length; i++) {
    // if (i == 5) {
    //   // break;
    //   // continue;
    // print("i = $i");
    // }
    print(name[i]);
  }
  print("🙊");
  print(" ");

  final numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
  final names = ["Mar", "Ada", "Zharick", "Alana", "Zafiro"];

  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
  print("🙊");
  print(" ");

// Otra manera de hacer un if
  for (int e in numbers) {
    print(e);
  }
  print("🐝");
  print(" ");

  for (String e in names) {
  // for (final e in names) { final: para no poner el tipo de dato
    print(e);
  }
  print("🐙");
  print(" ");

  final products = <int, String> {
    0: "Mac",
    1: "Iphone",
    2: "iPad",
  };

  for (final e in products.entries) {
  // for (final e in products.keys) { recuperar solo las keys
  // for (final e in products.values) { recuperar solo los valores 
    print("key ${e.key}");
    print("value ${e.value}");
    print(e);
  }
}
