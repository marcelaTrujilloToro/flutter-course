import 'package:hello_world/models/animals.dart';

void main(List<String> args) {
  final dolphin = Dolphin();
  final duck = Duck();
  final shark = Shark();
  final bat = Bat();
  final cat = Cat();
  final dove = Dove();
  final flyFish = FlyingFish();

  dolphin.swim();
  duck.swim();
  duck.walk();
  duck.fly();
  shark.swim();
  bat.fly();
  bat.walk();
  cat.walk();
  dove.fly();
  dove.walk();
  flyFish.swim();
  flyFish.fly();
}
