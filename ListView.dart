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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Container(
            color: Colors.amber[600],
            child: Text('Entery 1', style: TextStyle(color: Colors.purple)),
          ),
          Container(
              color: Colors.amber[300],
              child: Text(
                'Entery 2',
                style: TextStyle(color: Colors.purple),
              )),
          Container(
            color: Colors.amber[100],
            child: Text(
              'Entery 3',
              style: TextStyle(color: Colors.purple),
            ),
          )
        ],
      ),
    );
  }
}
