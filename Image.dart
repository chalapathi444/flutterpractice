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
        body: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'));
  }
}
