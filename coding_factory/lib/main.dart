import 'package:coding_factory/screens/life_cycle_screen.dart';
import 'package:flutter/material.dart';

import 'package:coding_factory/screens/helloworld_screen.dart';
import 'package:coding_factory/screens/splash_screen.dart';
import 'package:coding_factory/screens/row_and_column_screen.dart';
import 'package:coding_factory/screens/webview_screen.dart';
import 'package:coding_factory/screens/image_carousel_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    // debugShowCheckedModeBanner: false, // debug 모드
    // home: HelloWorldScreen(),
    // home: SplashScreen(),
    // home: RowAndColumnScreen(),
    // home: WebViewScreen(),
    // home: LifeCycleScreen(),
    home: ImageCarouselScreen(),
  ));
}