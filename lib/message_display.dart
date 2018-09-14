import 'package:flutter/material.dart' show BuildContext, StatelessWidget, Text, Widget;

class MessageDisplay extends StatelessWidget {
  final String msg;
  MessageDisplay(this.msg) {
    print('[ MessageDisplay Widget constructor ]');
  }

  @override
  Widget build(BuildContext context) {
    print('[ MessageDisplay Widget build ]');
    return Text(this.msg);
  }
}

