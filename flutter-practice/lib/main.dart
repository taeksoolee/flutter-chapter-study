import'package:flutter/material.dart';
import 'package:splash_screen/screen/HomeScreen.dart';
import 'package:splash_screen/screen/SplashScreen.dart';
import 'package:splash_screen/screen/WebViewScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      // home: SplashScreen(),
      home: WebViewScreen(),
    ),
  );
}
