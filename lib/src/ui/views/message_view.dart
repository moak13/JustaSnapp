import 'package:flutter/material.dart';

class MessageView extends StatefulWidget {
  MessageView({Key key}) : super(key: key);

  @override
  _MessageViewState createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('You have not initiated any chat yet'),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}