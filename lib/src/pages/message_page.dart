import 'package:flutter/material.dart';


class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text('Message')),
      body: Center(
        child: Container(
          child: Text(arguments),
        ),
      ),
    );
  }
}