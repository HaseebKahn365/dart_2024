void main() {
  // driveCar('Haseeb', 'bilal, hammad');
  driveCar('Haseeb', ['bilal', 'hammad']);

  // var a = 10;
  // var b = 1.2;
  // var c = a + b;
  // print(c.runtimeType); // double

  int? a = 10;
  int? b = 1;
  int? c = a + b;
  print(c.runtimeType); // int

  print(returnString());
}

void driveCar(String driver, List<String>? passengers) {
  if (passengers != null) {
    print('Driver: $driver and Passengers: $passengers');
  } else {
    print('Driver: $driver');
  }
}

String? returnString() {
  return null; //it was asking so..
}
