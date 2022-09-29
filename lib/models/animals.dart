// en dart no existe herencia multiple, por eso se hace uso de los Mixins

// no lo permite ya que no es del tipo Animal
// class Person with FlyMixin {}

abstract class Animal {}

abstract class Fish extends Animal {}

abstract class Bird extends Animal {}

abstract class Mammal extends Animal {}

class Dolphin extends Mammal with SwimMixin {}

class Bat extends Mammal with FlyMixin, WalkMixin{}

class Cat extends Mammal with WalkMixin{}

class Dove extends Bird with FlyMixin, WalkMixin{}

class Duck extends Bird with SwimMixin, WalkMixin, FlyMixin{}

class Shark extends Fish with SwimMixin{}

class FlyingFish extends Fish with FlyMixin, SwimMixin{}


// on para decirle en qeu tipo de clases se puede usar 
mixin SwimMixin on Animal{
  void swim(){
    print("$runtimeType swim");
  }
}

mixin WalkMixin on Animal{
  void walk(){
    print("$runtimeType walk");
  }
}

mixin FlyMixin on Animal{
  void fly(){
    print("$runtimeType fly");
  }
}
