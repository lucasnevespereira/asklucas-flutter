import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: AskPage(),
      ),
    );

class AskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      appBar: AppBar(
        title: Text('Ask Lucas'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ask(),
    );
  }
}

class Ask extends StatefulWidget {
  @override
  _AskState createState() => _AskState();
}

class _AskState extends State<Ask> {
  int randomNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            print('I got clicked');
            setState(() {
              randomNumber = Random().nextInt(3) + 1;
            });
          },
          child: Center(child: Image.asset('images/lucas$randomNumber.png')),
        ),
      ],
    );
  }
}
