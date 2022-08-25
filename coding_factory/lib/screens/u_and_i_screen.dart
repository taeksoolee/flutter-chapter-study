import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class UAndIScreen extends StatefulWidget {
  const UAndIScreen({Key? key}) : super(key: key);

  @override
  State<UAndIScreen> createState() => _UAndIScreenState();
}

class _UAndIScreenState extends State<UAndIScreen> {
  DateTime selectedDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700], // default: 500
      body: SafeArea(
        bottom: false,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _TopPart(selectedDate: selectedDate, onPressed: onHeartPressed),
              _BottomPart()
            ],
          ),
        ),
      ),
    );
  }

  void onHeartPressed() {
    final now = DateTime.now();

    showCupertinoDialog(
        context: context,
        barrierDismissible: true, // 외부 클릭시 종료 기능을 활성화한다.
        builder: (BuildContext context) {
          return Align(
            // 정렬 기준이 없으면 전체를 차지하게된다.
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: 300.0,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: selectedDate,
                maximumDate: DateTime(now.year, now.month, now.day),
                onDateTimeChanged: (DateTime date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),
            ),
          );
        });
  }
}

class _TopPart extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPressed;

  const _TopPart(
      {required this.selectedDate, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeText = theme.textTheme;

    final currPlatform = Theme.of(context).platform;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('U & I', style: themeText.headline1),
          Column(
            children: [
              Text('우리 처음 만난날', style: themeText.bodyText1),
              Text(DateFormat('yyyy. MM. dd').format(selectedDate),
                  style: themeText.bodyText2)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              currPlatform == TargetPlatform.iOS
                  ? IconButton(
                      iconSize: 60.0,
                      onPressed: onPressed,
                      icon: Icon(Icons.favorite, color: Colors.red[300]))
                  : IconButton(
                      iconSize: 60.0,
                      onPressed: () {
                        onPressedStar(context);
                      },
                      icon: Icon(Icons.star, color: Colors.yellow[300])),
            ],
          ),
          Text(
            'D-${DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day).difference(selectedDate).inDays + 1}',
            style: themeText.headline2,
          ),
        ],
      ),
    );
  }

  void onPressedStar(BuildContext context) async {
    DateTime tomorrow = DateTime.now().add(Duration(days: 1));

    DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: tomorrow, //초기값
      firstDate: tomorrow, //시작일
      lastDate: tomorrow.add(Duration(days: 29)), //마지막일
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark(), //다크 테마
          child: child!,
        );
      },
      locale: const Locale("ko", ""),
    );

    if (dateTime != null) {
      Fluttertoast.showToast(
        msg: dateTime.toString(),
        toastLength: Toast.LENGTH_LONG,
        //gravity: ToastGravity.CENTER,  //위치(default 는 아래)
      );
    }
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset('asset/u_and_i/img/sunflower.png'));
  }
}
