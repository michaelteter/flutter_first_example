import 'package:flutter/material.dart';

import './message_feature.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('WidgetBasics')),
        body: Center(child: Container(child: MessageFeature()))
      )
    );
  }
}
