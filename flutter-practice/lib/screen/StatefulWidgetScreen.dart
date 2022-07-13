import 'package:flutter/material.dart';

class StatefulWidgetScreen extends StatefulWidget {
  StatefulWidgetScreen({Key? key}) : super(key: key) {
    print('constructor!');
  }

  @override
  State<StatefulWidgetScreen> createState() {
    print('createState!');
    return _StatefulWidgetState();
  }
}

class _StatefulWidgetState extends State<StatefulWidgetScreen> {
  bool _isShow = true;
  bool _toggle = false;
  Color _color = Colors.blue;

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant StatefulWidgetScreen oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: _isShow ? _ColorBox(color: _color) : Container(),
              ),
            ),
            _Button(
              text: 'change',
              onTap: () {
                setState(() {
                  _toggle = !_toggle;

                  if (_toggle) {
                    _color = Colors.blue;
                  } else {
                    _color = Colors.red;
                  }
                });
              },
            ),
            _Button(
              text: _isShow ? 'hide' : 'show',
              onTap: () {
                setState(() {
                  _isShow = !_isShow;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorBox extends StatelessWidget {
  final Color? color;

  const _ColorBox({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
    );
  }
}

class _Button extends StatelessWidget {
  final String text;
  final GestureTapCallback? onTap;

  const _Button({ required this.text, required this.onTap, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        color: Colors.black,
        child: Center(
          child: Text(text, style: const TextStyle(color: Colors.white))
        )
      ),
    );
  }
}
