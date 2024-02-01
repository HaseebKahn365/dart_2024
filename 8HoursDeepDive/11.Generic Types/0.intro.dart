abstract class Map<K, V> {
  V operator [](Object key);
  void operator []=(K key, V value);
  void clear();
  Iterable<K> get keys;
  Iterable<V> get values;
  int get length;
  bool get isEmpty;
  bool get isNotEmpty;
}

abstract class List<E> {
  E operator [](int index);
  void operator []=(int index, E value);
  void add(E value);
  void addAll(Iterable<E> iterable);
  void sort([int compare(E a, E b)]);
  void clear();
  void insert(int index, E element);
  void insertAll(int index, Iterable<E> iterable);
  void setAll(int index, Iterable<E> iterable);
  E removeAt(int index);
  E removeLast();
  bool remove(Object value);
  E get first;
  E get last;
  int get length;
  bool get isEmpty;
  bool get isNotEmpty;
  Iterable<E> get reversed;
  List<R> map<R>(R f(E e));
  Iterable<E> where(bool test(E element));
  Iterable<T> expand<T>(Iterable<T> f(E element));
  void forEach(void f(E element));
  Iterable<E> take(int count);
  Iterable<E> takeWhile(bool test(E value));
  Iterable<E> skip(int count);
  Iterable<E> skipWhile(bool test(E value));
  bool any(bool test(E element));
  bool every(bool test(E element));
  String join([String separator = ""]);
  bool contains(Object element);
  void fillRange(int start, int end, [E fillValue]);
  void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]);
  void removeRange(int start, int end);
  void insertRange(int start, int end, [E fillValue]);
  List<E> sublist(int start, [int end]);
  Iterable<E> getRange(int start, int end);
  int indexOf(E element, [int start = 0]);
  int lastIndexOf(E element, [int start]);
  List<E> toList({
    bool growable = true,
  });
  Set<E> toSet();

  String toString();
  int indexWhere(bool test(E element), [int start = 0]);
  int lastIndexWhere(bool test(E element), [int start]);
  E singleWhere(bool test(E element));
  E elementAt(int index);
  void removeWhere(bool test(E element));
  void retainWhere(bool test(E element));
  Iterable<E> followedBy(Iterable<E> other);
  Map<int, E> asMap();
  List<E> operator +(List<E> other);
}
