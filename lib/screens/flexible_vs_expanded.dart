import 'package:flutter/material.dart';

// Diff between Flexible and Expended Widget//

// Flexible Widget
//Contain 3 parameter
// 1. fit by default FlexFit.loose and FlexFit.tight is equal to Expended Widget
// FlexFit.loose only contain that much space which widget container
// FlexFit.tight container whole space which it can be.
// 2. flex by default is 1
// 3. Child

// Expended Widget
//Contain 2 parameter
// 1. flex by default is 1
// 2. Child

class FlexibleVsExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Row(children: [
            Flexible(
                child: Container(
                    color: Colors.red,
                    child: Text(
                        'This is a very long text that won’t fit the line.'))),
            Flexible(
                fit: FlexFit.loose,
                child: Container(color: Colors.green, child: Text("Goodbye!"))),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Expanded(
                child: Container(
                    color: Colors.red,
                    child: Text(
                        'This is a very long text that won’t fit the line.'))),
            Expanded(
                child: Container(color: Colors.green, child: Text("Goodbye!"))),
          ])
        ],
      ),
    );
  }
}
