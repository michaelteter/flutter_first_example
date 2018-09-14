import 'package:flutter/material.dart';

import './message_display.dart';

class MessageFeature extends StatefulWidget {
  final String initialMsg;
  MessageFeature([this.initialMsg = 'Hello World.']) {
    print('[ MessageFeature constructor ]');
  }

  @override State<StatefulWidget> createState() {
    print('[ MessageFeature createState ]');
    return _MessageFeatureState();
  }
}

class _MessageFeatureState extends State<MessageFeature> {
  String _msg = '';

  @override
  void initState() {
    print('[ _MessageFeatureState initState ]');
    super.initState();
    _msg = widget.initialMsg;
  }

  @override
  void didUpdateWidget(MessageFeature oldWidget) {
    print('[ _MessageFeatureState didUpdateWidget ]');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[ _MessageFeatureState build ]');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: MessageDisplay(_msg)
        ),
        RaisedButton(
          child: Text('Reverse Message'), 
          onPressed: () { 
            setState(() { _msg = _msg.split('').reversed.join(''); });
          }
        )
      ],
    );
  }
}
