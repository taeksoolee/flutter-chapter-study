import 'package:flutter/material.dart';

class StatelessWidgetExam extends StatelessWidget {
  final Color color;

  StatelessWidgetExam({
    required this.color,
    Key? key,
  }): super(key: key) {
    print('Widget Constructor 실행!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 20.0,
        height: 20.0,
        color: color,
      ),
    );
  }
}