import 'package:flutter/material.dart';

import './views/photosList.dart';

void main() => runApp(FlutterApp());

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterApp'),
        ),
        body: PhotosList(),
      ),
    );
  }
}
