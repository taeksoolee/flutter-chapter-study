import 'package:flutter/material.dart';

class HelloWorldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        "Hello World",
        style: TextStyle(color: Colors.white, fontSize: 20.0 // px
            ),
      )),
    );
  }
}