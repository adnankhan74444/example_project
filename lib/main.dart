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
import 'package:example_project/screens/flexible_vs_expanded.dart';
import 'package:example_project/screens/set_state.dart';
import 'package:example_project/screens/sliver_appbar.dart';
import 'package:example_project/screens/stateful_widget_lifecycle.dart';
import 'package:example_project/screens/value_notif.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: new MyApp(),
));



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SetStateVSValue',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FlexibleVsExpanded(),
      // home: CustomSliverHeaderDemo(),
      // home: SetStateExample(),
      // home: ValueNotifierWidget(),

    );
  }
}

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


