import 'package:flutter/material.dart';

class LifeCycleDemo extends StatefulWidget {
  const LifeCycleDemo();

  // LifeCycleDemo() {
  //   print("Widget constructor");
  // }

  @override
  _LifeCycleDemoState createState() => _LifeCycleDemoState();
}

class _LifeCycleDemoState extends State<LifeCycleDemo> {
  int counter = 0;

  _LifeCycleDemoState() {
    print("Widget state constructor");
  }

  @override
  void initState() {
    print("From initState");
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("From didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(LifeCycleDemo oldWidget) {
    print("From state didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("From state build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget Lifecycle Demo"),
      ),
      body: Container(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Counter: $counter",
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Text("Click Me"),
                )
              ],
            )),
      ),
    );
  }

  @override
  void dispose() {
    print("From state dispose");
    super.dispose();
  }
}