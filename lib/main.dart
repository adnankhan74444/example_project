// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<Widget> tiles;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     tiles = [StatelessColorTileThree(), StatelessColorTileFour()];
//   }
//
//   swapTile() {
//     setState(() {
//       tiles.insert(1, tiles.removeAt(0));
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Row(
//           children: tiles,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: swapTile,
//         child: Icon(Icons.sentiment_very_satisfied),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
//
// //// Stateful Widget /////
//
// class StatefulColorTileOne extends StatefulWidget {
//   @override
//   _StatefulColorTileOneState createState() => _StatefulColorTileOneState();
// }
//
// class _StatefulColorTileOneState extends State<StatefulColorTileOne> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height / 4,
//       width: MediaQuery.of(context).size.width / 2,
//       color: Colors.red,
//     );
//   }
// }
//
// class StatefulColorTileTwo extends StatefulWidget {
//   @override
//   _StatefulColorTileTwoState createState() => _StatefulColorTileTwoState();
// }
//
// class _StatefulColorTileTwoState extends State<StatefulColorTileTwo> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height / 4,
//       width: MediaQuery.of(context).size.width / 2,
//       color: Colors.amberAccent,
//     );
//   }
// }
//
// //// Stateless Widget /////
//
// class StatelessColorTileThree extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height / 4,
//       width: MediaQuery.of(context).size.width / 2,
//       color: Colors.red,
//     );
//   }
// }
//
// class StatelessColorTileFour extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height / 4,
//       width: MediaQuery.of(context).size.width / 2,
//       color: Colors.amberAccent,
//     );
//   }
// }
// import 'package:example_project/screens/flexible_vs_expanded.dart';
// import 'package:example_project/screens/set_state.dart';
// import 'package:example_project/screens/sliver_appbar.dart';
// import 'package:example_project/screens/stateful_widget_lifecycle.dart';
// import 'package:example_project/screens/value_notif.dart';
// import 'package:flutter/material.dart';
// void main() => runApp(new MaterialApp(
//   debugShowCheckedModeBanner: false,
//   home: new MyApp(),
// ));
//
//
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SetStateVSValue',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: FlexibleVsExpanded(),
//       // home: CustomSliverHeaderDemo(),
//       // home: SetStateExample(),
//       // home: ValueNotifierWidget(),
//
//     );
//   }
// }

// class MainApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 "Stateful Widget Lifecycle Demo",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 28.0),
//               ),
//               RaisedButton(
//                   child: Text("Go to next"),
//                   onPressed: () {
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (context) {
//                       return const LifeCycleDemo();
//                     }));
//                   }),
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/cubit/counter_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            SizedBox(
              height: 5,
            ),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state.wasIncremented == true) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Incremented!'),
                      duration: Duration(milliseconds: 300),
                    ),
                  );
                } else if (state.wasIncremented == false) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Decremented!'),
                      duration: Duration(milliseconds: 300),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state.counterValue < 0) {
                  return Text(
                    'BRR, NEGATIVE ' + state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (state.counterValue % 2 == 0) {
                  return Text(
                    'YAAAY ' + state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (state.counterValue == 5) {
                  return Text(
                    'HMM, NUMBER 5',
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else
                  return Text(
                    state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
              },
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: Text('${widget.title}'),
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  heroTag: Text('${widget.title} #2'),
                  onPressed: () {
                    // BlocProvider.of<CounterCubit>(context).increment();
                    context.read<CounterCubit>().increment();
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
