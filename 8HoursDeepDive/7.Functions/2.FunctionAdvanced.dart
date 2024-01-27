void main() {
  printSpecial([1, 2, 3, 4, 5, 6], (List<int> a) {
    for (var item in a) {
      if (item.isEven) {
        print(item);
      }
    }
  });
}

void printSpecial(List<int> a, Function b) {
  b(a);
}
