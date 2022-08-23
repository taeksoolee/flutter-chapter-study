import 'package:coding_factory/components/stateful_widget_exam.dart';
import 'package:flutter/material.dart';

class LifeCycleScreen extends StatefulWidget {
  const LifeCycleScreen({Key? key}) : super(key: key);

  @override
  State<LifeCycleScreen> createState() => _LifeCycleScreenState();
}

class _LifeCycleScreenState extends State<LifeCycleScreen> {
  Color color = Colors.red;
  bool shown = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width, 
                alignment: Alignment.center,
                child: shown ? StatefulWidgetExam(color: color) : Container()
              )
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(10,0,10,0),
              child: ElevatedButton(
                child: const Text('Change Box Color'),
                onPressed: () {
                  print('===click change color button!===');
                  setState(() {
                    if(color == Colors.red) {
                      color = Colors.blue;
                    } else {
                      color = Colors.red;
                    }
                  });
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(10,0,10,0),
              child: ElevatedButton(
                child: Text(shown ? 'Hide Box' : 'Show Box'),
                onPressed: () {
                  print('===click toggle button!===');
                  setState(() {
                    shown = !shown;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
