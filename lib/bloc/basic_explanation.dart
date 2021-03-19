//we have two types of bloc
//1. bloc.cubit lighter version
//2. bloc heavy version

//1. Cubit
// bloc.cubit is a smaller part of bloc
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
// What is the big difference between bloc.cubit and bloc?

// Major Concept
//1. BlocBuilder
//Re-builds the UI for every new state coming from the bloc.
//The builder function can be called multiple times per state (due to flutter engine).
//A widget that helps RE-Building the UI based on bloc State changes
//BlocBuilder is a widget which acquire bloc or cubit and a builder function.
//The Builder function must be a pure function.

//aik masla ya hai es mai ky ya multiple times call houta hai jis mai agr
//For example hmye navigate krwana ho user ko ya phr toast dekhna ho tou
//wo bi multiple times call hoga.

// What is Pure function?
// A pure function is only depends on function arguments is called pure function

//2. BlocProvider
//Creates and provide the only instance of a bloc to the subtree
// BlocProvider is a flutter widget which create and provide a bloc to all of his children.
// BlocProvider is also known as dependency injection widget.so the single instance of a Bloc
// can be provided to a multiple widget with a Subtree.

//3. BlocListener
//The listner function is called only ones per state
//(Not include the intial state)

//4. BlocConsumer
// Combines both bloc provider and bloc listener into a single widget

// What exactly is a widget?
// Widget is flutter are actually class which has own attributes and behavior

//Bloc Architecture:
// break into three layers:
//1.UI Representation Layer
//2.Business Logic Layer
//3.Data layer

//Data layer
//divided into three layers
//1.The repositories
//2.The data providers
//3.The Models

//What is json?
//Json is a collection of paired data

//Local Access
//providing an instance of bloc or cubit to a single screen is
// known as local access

//Route Access
//providing an instance of bloc or cubit to multiple screen's is
// known as local access

//Flutter Routing Options
//1. Anonymous Routing
//2. Named Routing
//3. Generated Routing
