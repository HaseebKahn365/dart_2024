/*

Dart is type safe
Static Type checking and RUN time type checking

Dynamic type is not checked at compile time but will be infered at run time.
inference of the type is done through var keyword.

The dart analyser won't allow the change of type of var but with dynamic we can do that

sound null safety.

 */

void main() {
  // var name0 = 'Haseeb';
  // name0 = 10; // This will throw an error

  dynamic name = 'Haseeb';
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
AOT - Ahead of time compilor // it will compile the entire code and run it
dartdevc - dart development compilor
dart2js - dart to javascript compilor
 */


/*
tool folder: pubspec and .packages are for managing packages
lib folder: contains the source code
web folder: contains the web application

analysis_options.yaml has linting rules
dart packaging: it is the actual project, that is the main component of the dart application
application package and library package.

Dart linting: 
Lint rules come inside the pedantic package

Dart has good developement and production phase features and tools
Dart VM provides and enviroment for the dart code to run in.
Heap, thread and stack are the three main components of the dart VM
Heap is managed by garbage collector.
dart JIT is done using command dart run 
dart AOT is done using command dart compile exe

 */

