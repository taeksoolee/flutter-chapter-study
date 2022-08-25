import 'package:coding_factory/screens/const_test_screen.dart';
import 'package:flutter/material.dart';

import 'package:coding_factory/screens/helloworld_screen.dart';
import 'package:coding_factory/screens/splash_screen.dart';
import 'package:coding_factory/screens/row_and_column_screen.dart';
import 'package:coding_factory/screens/webview_screen.dart';
import 'package:coding_factory/screens/life_cycle_screen.dart';
import 'package:coding_factory/screens/image_carousel_screen.dart';
import 'package:coding_factory/screens/u_and_i_screen.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main(List<String> argdifferences) {
  runApp(MaterialApp(
    // theme: ThemeData(
    //     fontFamily: 'sunflower',
    //     textTheme: TextTheme(
    //       headline1: TextStyle(
    //           color: Colors.white, fontFamily: 'parisienne', fontSize: 80.0),
    //       headline2: TextStyle(
    //           color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w700),
    //       bodyText1: TextStyle(color: Colors.white, fontSize: 30.0),
    //       bodyText2: TextStyle(color: Colors.white, fontSize: 20.0),
    //     )),
    // debugShowCheckedModeBanner: false, // debug 모드
    // home: HelloWorldScreen(),
    // home: SplashScreen(),
    // home: RowAndColumnScreen(),
    // home: WebViewScreen(),
    // home: LifeCycleScreen(),
    // home: ImageCarouselScreen(),
    // home: UAndIScreen(),
    home: ConstTestScreen(),
  ));
}
