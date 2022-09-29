import 'dart:io';

void main(List<String> args) {
  calculateAge();
}

void calculateAge() {
  try {
    print("Enter a birthday");
    final text = stdin.readLineSync();
    if (text != null) {
      String? name; // para que tengamos otro error para capturar
      final birthday = DateTime.parse(text);
      final current = DateTime.now();
      print(name!.length);
      final days = current.difference(birthday).inDays;
      final age = days / 365;
      print("---> ${age.toStringAsFixed(1)}");
    }
    //para que capture exclusivamente ese tipo de errores 
  } on FormatException {
    print("Invalid bithday");

    // si es cualquier otro tipo de error
  } catch (e, s) {
    print(e);
    print(s); // stack trace
    print("Error: ${e.runtimeType}");
  }
}
