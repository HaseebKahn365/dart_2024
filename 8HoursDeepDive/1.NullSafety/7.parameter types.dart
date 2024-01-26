void main() {
  printer(a: 10);
  printer(b: 10);
  printer(a: 10, b: 10);

  printer2(10, 20);
  printer3(a: 10, b: 20);
}

//named parameters
void printer({int? a, int? b}) {
  if (a != null && b != null) {
    print(a + b);
  } else {
    print('a or b is null');
  }
}

//positional parameters
void printer2(int? a, int? b) {
  if (a != null && b != null) {
    print(a + b);
  } else {
    print('a or b is null');
  }
}

//required named
void printer3({required int a, required int b}) {
  print(a + b);
}

//required positional
void printer4(int a, int b) {
  print(a + b);
}
