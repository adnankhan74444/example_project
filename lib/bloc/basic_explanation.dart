//we have two types of bloc
//1. cubit lighter version
//2. bloc heavy version

//1. Cubit
// cubit is a smaller part of bloc
//Cubit is a light weight state management solution which is subset of bloc pattern
//and we don't rely on actions and we have planned functions to emit new state.
//Cubit is a special kind of stream component which is based on some functions
// which are called from ui by emitting different state on a stream
// Functions are not part of the streams.
// A stream a state which emit and modify the ui.

//2. Bloc
// Stream of state
// Stream of events

// When should i use bloc as opposed to bloc?
  // is related how you receive input from ui
// What is the big difference between cubit and bloc?


// Major Concept
//1. BlocBuilder
//2. BlocProvider
// BlocProvider is a flutter widget which create and provide a bloc to all of his children.
// BlocProvider is also known as dependency injection widget.so the single instance of a Bloc
// can be provided to a multiple widget with a Subtree.

//3. BlocListner

// What exactly is a widget?
// Widget is flutter are actually class which has own attributes and behaviour.



