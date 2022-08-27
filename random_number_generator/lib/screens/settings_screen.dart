import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:random_number_generator/constant/color.dart';
import 'package:random_number_generator/widgets/number_row.dart';

class SettingScreen extends StatefulWidget {
  final int maxNumber;
  const SettingScreen({required this.maxNumber, Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int maxNumber = 0;

  @override
  void initState() {
    super.initState();
    maxNumber = widget.maxNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Body(maxNumber: maxNumber),
              _Footer(
                  maxNumber: maxNumber,
                  onChangedSlide: onChangedSlide,
                  onSaved: onSaved)
            ],
          ),
        ),
      ),
    );
  }

  onChangedSlide(double val) {
    setState(() {
      maxNumber = val.toInt();
    });
  }

  onSaved() {
    Navigator.of(context).pop(maxNumber);
  }
}

class _Body extends StatelessWidget {
  final int maxNumber;
  const _Body({required this.maxNumber, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NumberRow(number: maxNumber),
    );
  }
}

class _Footer extends StatelessWidget {
  final int maxNumber;
  final ValueChanged<double>? onChangedSlide;
  final VoidCallback onSaved;
  const _Footer({
    required this.maxNumber,
    required this.onChangedSlide,
    required this.onSaved,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Slider(
          value: maxNumber.toDouble(),
          min: 1000,
          max: 100000,
          onChanged: onChangedSlide,
        ),
        ElevatedButton(
          onPressed: onSaved,
          style: ElevatedButton.styleFrom(
            primary: ThemeColors.redColor,
          ),
          child: const Text("Save!"),
        ),
      ],
    );
  }
}
