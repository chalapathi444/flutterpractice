import 'package:flutter/material.dart';

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
        title: Text("hello"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
                // alignment: Alignment.topLeft,
                child: Text("hello i am here")),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
              child: Text("Hello dear"),
              //alignment: Alignment.topLeft,
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                  'C:\\Users\\chala\\OneDrive\\Desktop\\project\\practicewidgets\\Images\\IMAGE.png'),
            ),
          ),
        ],
      ),
    );
  }
}
