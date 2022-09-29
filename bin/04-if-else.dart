void main(List<String> args) {

  final email = "email@example.com";

  if (email.contains("@")) {
    print("Email valido");
  }else if(email.contains(".")){
    print("Missing @");
  
  }else if(email.isEmpty){
    print("Ingrese el email");
  }
  else {
    print("Email invalido");
  }
}