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
          title: Text("testing"),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.alarm),
          label: Text("Save"),
        ),
        body: Column(
          children: [
            FlatButton(
              height: 30,
              minWidth: 30,
              color: Colors.red,
              padding: EdgeInsets.all(20),
              textColor: Colors.green,
              child: Text("hello how are you"),
              focusColor: Colors.white,
              onLongPress: () {
                print("hi");
              },
              onPressed: () {
                print("Hello world");
              },
            ),
            Container(
              height: 100,
              width: 100,
              child: RaisedButton(
                padding: EdgeInsets.all(15),
                onPressed: () {},
                child: Text("Hey! how are you man"),
                elevation: 4,
              ),
            )
          ],
        ));
  }
}
