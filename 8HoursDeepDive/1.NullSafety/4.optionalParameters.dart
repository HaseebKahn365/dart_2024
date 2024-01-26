void main(List<String> args) {
  CheckPresence();
}

void CheckPresence([String? name, String? name2]) {
  if (name == null && name2 == null) {
    print("No one is present");
  } else if (name == null || name2 == null) {
    print("One person is present");
  } else {
    print("Both are present");
  }
}
