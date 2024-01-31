void main() {
  var h1 = SingleTonHaseeb();
  var h2 = SingleTonHaseeb();
  print("hashcode of h1: ${h1.hashCode} and h2: ${h2.hashCode}");
  print("checking identity: ${identical(h1, h2)}");
}

class SingleTonHaseeb {
  SingleTonHaseeb._internal();
  static final SingleTonHaseeb _instance = SingleTonHaseeb._internal();
  factory SingleTonHaseeb() {
    return _instance;
  }
}
