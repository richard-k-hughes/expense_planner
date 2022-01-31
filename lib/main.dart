import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // Column takes the width of the widest child
        children: <Widget>[
          // Card takes the childs width unless there is a parent with a clearly defined width. See the two cards below!
          Card(
            // Card will takes the width of the child
            child: Container(
              child: Text('Chart of Dates'),
              width: double.infinity,
              color: Colors.blue,
            ),
            elevation: 5,
          ),
          Container(
            // width: double.infinity,
            child: Card(
              // Card also takes the width of the parent
              child: Text('Transaction List'),
            ),
          )
        ],
      ),
    );
  }
}
