import 'dart:async';

void main(List<String> args) async {
  // print("Hola");

  // final message = await sleep(3);
  // print(message);
  // print("zafiro");

  try {
    print("Hola");

    final message = await sleep(3);
    print(message);
    print("zafiro");
  } catch (e) {
    print(e);
  }
}

Future<String> sleep(int seconds) {
  Completer<String> completer = Completer();
  Timer(
    Duration(seconds: seconds),
    () {
      // completer.complete("🙄"); 
      completer.completeError(RangeError("Custom error")); // capturar errores
    },

    //Lambda function cuando solo se tiene una linea de codigo
    // Duration(seconds: seconds),
    // ()=> completer.complete("hi");


  );
  return completer.future;
}
