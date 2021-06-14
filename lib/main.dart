import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                actions: <Widget>[
                  Icon(Icons.camera_front, size: 40,)
                ],
                title: Text("Sliver Example"),
                leading: Icon(Icons.menu),
                backgroundColor: Colors.green,
                expandedHeight: 80.0,
                floating: true,
                pinned: true
            ),
            SliverFixedExtentList(
              itemExtent: 55,
              delegate: SliverChildListDelegate([
                Container(color: Colors.blue),
                Container(color: Colors.pink),
                Container(color: Colors.yellow),
              ]),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(16.0),
                child: Text('Sliver Grid Header', style: TextStyle(fontSize: 28)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}