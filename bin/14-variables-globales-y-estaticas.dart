import 'package:hello_world/utils/api_key.dart';

import 'package:hello_world/models/pet-static.dart';

void main(List<String> args) {
  print(api_key);
  api_key = "hello_world";
  print(api_key);

  Pet.updateCounter(500);
  print(Pet.counter);

  // ENUMS

  print(Status.values);

  for (final s in Status.values) {
    print(s);
    print(s.index);
  }
final orderStatus = Status.created;

  switch (orderStatus) {
    case Status.created:
      break;
    case Status.ready:
      break;
    case Status.onTheWay:
      // TODO: Handle this case.
      break;
    case Status.delivered:
      // TODO: Handle this case.
      break;
  }
}

enum Status {
  created,
  ready,
  onTheWay,
  delivered,
}
