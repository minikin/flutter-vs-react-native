import 'package:flutter/material.dart';

import './views/photosList.dart';

void main() => runApp(
    new FlutterApp()
);

class FlutterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('FlutterApp'),
        ),
        body: new PhotosList(),
      ),
    );
  }
}