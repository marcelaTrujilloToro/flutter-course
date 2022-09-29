import 'dart:io';
import 'package:hello_world/utils/menu.dart';

void main(List<String> args) {
  final menu1 = Menu<String>(
    label: 'Are you a software developer? [yes/no]',
    options: [
      MenuOption<String>(value: "yes", text: "yes"),
      MenuOption<String>(value: "no", text: "no")
    ],
  );

  
  final selectedOption = menu1.choose();

  switch (selectedOption) {
    case 'yes':
      print("🤓");

      final menu2 = Menu<int>(
        label: "What is your favorite?",
        options: [
          MenuOption(value: 1, text: "Mobile"),
          MenuOption(value: 2, text: "Web"),
          MenuOption(value: 3, text: "Backend"),
          MenuOption(value: 4, text: "Other"),
        ],
      );

       final selectedOption = menu2.choose();

       print("GREAT $selectedOption");

      break;
    case 'no':
      print("😔");
       final menu3 = Menu<int>(
        label: "What is your favorite?",
        options: [
          MenuOption(value: 1, text: "Series"),
          MenuOption(value: 2, text: "Movies"),
          MenuOption(value: 3, text: "Games"),
          MenuOption(value: 4, text: "Other"),
        ],
      );

       final selectedOption = menu3.choose();

       print("GREAT $selectedOption");

      break;

  }
}
