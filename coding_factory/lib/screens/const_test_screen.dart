import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

/**
 * 
 */

class ConstTestScreen extends StatefulWidget {
  const ConstTestScreen({Key? key}) : super(key: key);

  @override
  State<ConstTestScreen> createState() => _ConstScreenTestState();
}

class _ConstScreenTestState extends State<ConstTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _TextContainer(text: 'Text'),
            const _TextContainer(
                text:
                    'Const Text'), // build Time에 알수 있는값만 사용. 다시 빌드함수를 호출하지 않는다.
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text('Increase'),
            )
          ],
        ),
      ),
    );
  }
}

class _TextContainer extends StatelessWidget {
  final String text;
  const _TextContainer({required String this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('_TextContainer : $text');
    return Text('$text');
  }
}
