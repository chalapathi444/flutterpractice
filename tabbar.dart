import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(tabs: [
                  Icon(Icons.train),
                  Icon(Icons.business),
                  Icon(Icons.flight),
                ]),
                title: Text("Sample tabs"),
              ),
              body: TabBarView(
                children: [
                  Icon(Icons.train),
                  Icon(Icons.business),
                  Icon(Icons.flight)
                ],
              ),
            )));
  }
}
