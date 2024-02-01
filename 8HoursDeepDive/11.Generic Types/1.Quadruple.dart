class Quadruple<E> {
  E? _first;
  E? _second;
  E? _third;

  Quadruple([this._first = null, this._second, this._third]);

  E? get first => _first;
  E? get second => _second;
  E? get third => _third;

  List<E?> getAsList() {
    return List<E?>.from([_first, _second, _third]);
  }
}

void main() {
  Quadruple<int> q = Quadruple(1, 2, 3);
  print(q.getAsList());
}
