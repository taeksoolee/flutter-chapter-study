import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:random_number_generator/constant/color.dart';
import 'package:random_number_generator/widgets/countdown.dart';

// 하남 배달특급 친구
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> randomNumbers = [
    123,
    456,
    213432,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '랜덤숫자 생성기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings, color: ThemeColors.redColor))
                ],
              ),
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: randomNumbers
                        .asMap()
                        .entries
                        .map((e) => Padding(
                              padding:
                                  EdgeInsets.only(top: e.key == 0 ? 0.0 : 16.0),
                              child: Row(
                                children: e.value
                                    .toString()
                                    .split('')
                                    .map((e) => Image.asset(
                                          'assets/img/$e.png',
                                          width: 45.0,
                                          height: 50.0,
                                        ))
                                    .toList(),
                              ),
                            ))
                        .toList()),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ThemeColors.redColor,
                  ),
                  onPressed: () {
                    final rand = Random();

                    final Set<int> newNumbers = {};

                    while (newNumbers.length != 3) {
                      final number = rand.nextInt(1000);
                      newNumbers.add(number);
                    }

                    setState(() {
                      randomNumbers = newNumbers.toList();
                    });
                  },
                  child: Text('Create!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
