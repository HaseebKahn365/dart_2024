/*

Dart is type safe
Static Type checking and RUN time type checking

Dynamic type is not checked at compile time but will be infered at run time.
inference of the type is done through var keyword.

The dart analyser won't allow the change of type of var but with dynamic we can do that

sound null safety.

 */

void main() {
  var name0 = 'Sarath';
  // name0 = 10; // This will throw an error

  dynamic name = 'Sarath';
  print(name.runtimeType);
  name = 10; // This will not throw an error
  print(name.runtimeType);

  print(name);

  var a;
  print(a.runtimeType);
}

/*

Dart uses compilor.
JIT - Just in time compilor //only compiles the newly affected portioon of the code and runs it
AOT - Ahead of time compilor
dartdevc - dart development compilor
dart2js - dart to javascript compilor
 */