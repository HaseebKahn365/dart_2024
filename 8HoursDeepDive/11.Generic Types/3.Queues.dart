class Queue<E> {
  final List<E?> _queue;
  int _front = 0;
  int _rear = 0;
  int _limit;

  Queue(int limit)
      : _limit = limit,
        _queue = List<E?>.filled(limit, null);

  void enqueue(E element) {
    if ((_rear + 1) % _limit == _front && _queue[_front] != null) {
      print("Queue overloaded");
    } else {
      _queue[_rear] = element;
      _rear = (_rear + 1) % _limit;
    }
  }

  E? dequeue() {
    if (_front == _rear) {
      print("Queue is empty, can't dequeue");
      return null;
    } else {
      E? temp = _queue[_front];
      _queue[_front] = null;
      _front = (_front + 1) % _limit;
      return temp;
    }
  }

  void printer() {
    for (int i = _front; i != _rear; i = (i + 1) % _limit) {
      print(_queue[i]);
    }
  }
}

void main() {
  Queue<int> q = Queue<int>(34);

  q.enqueue(21);
  q.enqueue(24);
  q.enqueue(31);

  q.printer();
  print("done enqueueing");

  q.dequeue();
  q.printer();
}
