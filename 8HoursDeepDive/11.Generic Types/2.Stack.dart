class Stack<E> {
  int limit = 10;
  final List<E> _stack = [];

  void push(E element) {
    if (_stack.length < limit) _stack.add(element);
  }

  E? pop() {
    if (_stack.length > 0) return _stack.removeLast();
    return null;
  }

  void printer() {
    for (int i = _stack.length - 1; i >= 0; i--) {
      print(_stack[i]);
    }
  }
}

void main() {
  Stack<int> s = Stack();
  s.push(21);
  s.push(43);
  s.push(143);
  s.printer();
}
