import 'package:flutter/material.dart';

import 'package:coding_factory/screens/helloworld_screen.dart';
import 'package:coding_factory/screens/splash_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    // debugShowCheckedModeBanner: false, // debug 모드
    // home: HelloWorldScreen(),
    home: SplashScreen(),
  ));
}