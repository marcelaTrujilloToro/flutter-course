import 'dart:io';

class Menu<T> {
  // T va a ser nuestro tipo generico
  final String label;
  final List<MenuOption<T>> options;

  Menu({
    required this.label,
    required this.options,
  });

  T choose() {
    print(label);
    for (int i = 0; i < options.length; i++) {
      final option = options[i];
      print("${i + 1}: ${option.text}");
    }
    final text = stdin.readLineSync();
    final index = int.tryParse(text ?? '');
    if (index != null && index >= 1 && index <= options.length) {
      return options[index - 1].value;
    } else {
      print(" ☠️ Invalid option, try again");
      return choose();
    }
  }
}

class MenuOption<T> {
  final T value;
  final String text;

  MenuOption({
    required this.value,
    required this.text,
  });
}
