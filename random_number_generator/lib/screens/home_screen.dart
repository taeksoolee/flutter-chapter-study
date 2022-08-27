import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:random_number_generator/constant/color.dart';
import 'package:random_number_generator/screens/settings_screen.dart';
import 'package:random_number_generator/widgets/countdown.dart';
import 'package:random_number_generator/widgets/number_row.dart';

// 하남 배달특급 친구
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int maxNumber = 1000;
  List<int> randomNumbers = [
    123,
    456,
    789,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(onPressedIcon: onPressedHeaderIcon),
              _Body(randomNumbers: randomNumbers),
              _Footer(onPressed: onRandomNumberGenerate)
            ],
          ),
        ),
      ),
    );
  }

  onPressedHeaderIcon() async {
    final result = await Navigator.of(context).push<int>(
      MaterialPageRoute(builder: (BuildContext context) {
        return SettingScreen(
          maxNumber: maxNumber,
        );
      }),
    );

    if (result != null) {
      setState(() {
        maxNumber = result;
      });
    }
  }

  onRandomNumberGenerate() {
    final rand = Random();

    final Set<int> newNumbers = {};

    while (newNumbers.length != 3) {
      final number = rand.nextInt(maxNumber);
      newNumbers.add(number);
    }

    setState(() {
      randomNumbers = newNumbers.toList();
    });
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onPressedIcon;
  const _Header({required this.onPressedIcon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Random Nums Generator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
            onPressed: onPressedIcon,
            icon: Icon(Icons.settings, color: ThemeColors.redColor))
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final List<int> randomNumbers;

  const _Body({required this.randomNumbers, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: randomNumbers
              .asMap()
              .entries
              .map((e) => Padding(
                    padding: EdgeInsets.only(top: e.key == 0 ? 0.0 : 16.0),
                    child: NumberRow(
                      number: e.value,
                    ),
                  ))
              .toList()),
    );
  }
}

class _Footer extends StatelessWidget {
  final void Function() onPressed;

  const _Footer({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ThemeColors.redColor,
        ),
        onPressed: onPressed,
        child: const Text('Create!'),
      ),
    );
  }
}
