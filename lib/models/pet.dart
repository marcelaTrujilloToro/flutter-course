class Pet {
  //al poner _ quion bajo se convierte en una propiedad privada osea que solo pueden ser adsequibles desde la clase Pet

  // no es recomendable tener getters y setters si se va a trabajar con datos privados,
  //preferiblemente usar los getters y la modificacion por medio de funciones no se settetes
  String _name;
  int _age;

  final _history = _History();

  DateTime get updateAt {
    return _history.updatedAt;
  }

// poder exponer las propiedades
  String get name {
    return _name;
  }

  int get age {
    return _age;
  }

  Pet({
    required String name,
    required int age,

    //para inicializar los parametros privados
  })  : _name = name,
        _age = age;

// modificar los valores
  void setName(String name) {
    _name = name;
    _sendReport();
    _history.update();
  }

// modificar los valores
  set age(int age) {
    _age = age;
     _history.update();
  }

  //metodo privado
  void _sendReport() {
    print("🐤");
  }

  @override
  String toString() {
    return "name: ${_name}, age: ${_age}";
  }
}

//clase privada dentro de otro clase
class _History {
  final DateTime createdAt = DateTime.now();
  final List<DateTime> _items = [];

  DateTime get updatedAt{
    if (_items.isEmpty) {
      return createdAt;
    }
    return _items.last;
  }

  void update(){
    _items.add(DateTime.now());
  }
}
