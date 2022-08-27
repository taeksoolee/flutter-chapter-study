import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumberRow extends StatelessWidget {
  final int number;
  const NumberRow({required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: number
          .toString()
          .split('')
          .map((e) => Image.asset(
                'assets/img/$e.png',
                width: 55.0,
                height: 60.0,
              ))
          .toList(),
    );
  }
}
