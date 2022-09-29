class Pet {
  static int _counter = 0;

  static int get counter {
    return _counter;
  }

  final String name;
  final int age;

  const Pet({
    required this.name,
    required this.age,
  });

  Pet copyWith({
    String? name,
    int? age,
  }) {
    return Pet(name: name ?? this.name, age: age ?? this.age);
  }

  static void updateCounter(int counter) {
    _counter = counter;
  }

  @override
  String toString() {
    return "name: ${name}, age: ${age}";
  }
}