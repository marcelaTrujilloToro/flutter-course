import 'package:hello_world/models/tuple.dart';

void main(List<String> args) {
  final loginResult = login("marces@email.com", "test");

  if (loginResult.left == 200) {
    print("TOKEN: ${loginResult.right}");
  } else if (loginResult.left == 404) {
    print("User not found");
  } else if (loginResult.left == 403) {
    print("Access denied");
  }
}

Tuple<int, String?> login(String email, String password) {
  if (email == "marces@email.com" && password == "test") {
    final token = "MY_TOKEN";
    return Tuple(200, token);
  } else if (email != "marces@email.com") {
    return Tuple(404, null);
  }
  return Tuple(403, null);
}

// class LoginResult {
//   final int statusCode;
//   final String? token;

//   LoginResult(this.statusCode, this.token);
// }
