import 'dart:async';

void main(List<String> args) async {
  print("Hola");

  // sleep(5).then(
  //   (value) {
  //     print(value);
  //     print("😸");
  //   },
  //   onError: (e, s){
  //     print(e);
  //     print(s);
  //   }
  // );

// mejor manera de trabajar con asincronos
  final value = await sleep(3);
  print(value);
  print("zafiro");
}

Future<String> sleep(int seconds) {
  return Future.delayed(
    Duration(seconds: seconds),
    () {
      // throw RangeError("Custom error");
      return "jejejee";
    },
  );
}
