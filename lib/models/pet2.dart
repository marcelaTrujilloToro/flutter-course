class Pet {
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

  @override
  String toString() {
    return "name: ${name}, age: ${age}";
  }
}
