int global = 5; //global

void main(List<String> args) {}

class car {
  static String type = "car"; //static is common for all;
  int topspeed = 90; //instance vars
  late int currentSpeed;

  void reachToSpeed(int s) {
    if (s > 0 && s < topspeed) {
      currentSpeed = s;
    } else {
      currentSpeed = topspeed;
    }
  }
}

void collide(int cars) {
  int collided = 3; //local
  print(collided);
}
