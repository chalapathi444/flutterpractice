import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> elements = <String>['A', 'B', 'C'];
  List<int> values = <int>[600, 300, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      body: Container(
        height: 400,
        child: ListView.separated(
          //itemCount: elements.length,
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.red,
              height: 20,
            );
          },
          itemBuilder: (BuildContext, int index) {
            return Container(
              height: 200,
              child: Text('Entery ${elements[index]}'),
              color: Colors.purple[values[index]],
            );
          },
          itemCount: elements.length,
        ),
      ),
    );
  }
}
