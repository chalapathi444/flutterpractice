import 'package:flutter/material.dart';
import 'grid1.dart';
import 'grid2.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  void dispose() {
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview'),
        backgroundColor: Colors.green,
        bottom: TabBar(
          controller: controller,
          tabs: [Icon(Icons.add), Icon(Icons.delete)],
        ),
        //  bottom: TabBar()),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[GridOne(), GridTwo()],
      ),
    );
  }
}
