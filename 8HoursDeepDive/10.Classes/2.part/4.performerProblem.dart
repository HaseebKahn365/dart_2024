class Performer {
  void perform() => print("Performing on stage");
}

mixin PionoGuy {
  void perform() => print("Performing on stage with piano");

  void showTime() {
    perform();
  }

  void someOtherMethod() {
    print("This is some other method");
  }
}

mixin GuitarGuy {
  void perform() => print("Performing on stage with guitar");
}

class Musician extends Performer with PionoGuy, GuitarGuy {
  void showTime() {
    perform();
  }
}

void main() {
  var musician = Musician();
  musician.showTime(); //THIS SHOULD SAY GUITARIST BECAUSE THIS IS THE LAST MIXIN. YES. IT DOES
}


//in summary extends = INHERITANCE
//implements = ABSTRACTION
//with = MIXINS