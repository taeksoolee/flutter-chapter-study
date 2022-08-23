import 'package:flutter/material.dart';

class StatefulWidgetExam extends StatefulWidget {
  final Color color;

  const StatefulWidgetExam({
    required this.color,
    Key? key,
  }): super(key: key);

  @override
  State<StatefulWidgetExam> createState() {
    print('createState 실행!');
    return _StatefulWidgetExamState();
  }
}

class _StatefulWidgetExamState extends State<StatefulWidgetExam> {
  @override
  void initState() {
    print('initState 실행!');
    super.initState(); // 항상 호출해야 한다.
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies 실행!');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print('deactivate 실행!');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose 실행!');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant StatefulWidgetExam oldWidget) {
    print('didUpdateWidget 실행!');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('build 실행!');
    return Container(
        width: 50.0,
        height: 50.0,
        color: widget.color,
    );
  }
}
