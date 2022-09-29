import 'package:hello_world/models/pet-herencia.dart';

void main(List<String> args) {
  final lazy = Dog(
    name: 'Lazy',
    age: 10,
    legs: 4,
  );
  final dory = Fish(
    name: 'Dory',
    age: 1,
    fins: 3,
  );

  print(dory);
  print(lazy);

  dory.swim();
  lazy.jump();
  lazy.run();
}
