import 'package:flutter/material.dart';
import 'package:random_number_generator/screens/home_screen.dart';

Future<void> main() async {
  await fetchApi();

  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

Future<bool> fetchApi() async {
  bool result = false;

  await Future.delayed(Duration(seconds: 3), () {
    result = true;
  });

  return result;
}
