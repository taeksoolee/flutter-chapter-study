import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UAndIScreen extends StatefulWidget {
  const UAndIScreen({ Key? key }) : super(key: key);

  @override
  State<UAndIScreen> createState() => _UAndIScreenState();
}

class _UAndIScreenState extends State<UAndIScreen> {
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
              _TopPart(),
              _BottomPart()
            ],
          ),
        ),
      ),
    );
  }
}

class _TopPart extends StatefulWidget {
  const _TopPart({ Key? key }) : super(key: key);

  @override
  State<_TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<_TopPart> {
  DateTime selectedDate = DateTime(
    DateTime.now().year, 
    DateTime.now().month, 
    DateTime.now().day
  );

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('U & I', 
            style: TextStyle(color: Colors.white, fontFamily: 'parisienne', fontSize: 80.0)),
          Column(
            children: [
              Text('우리 처음 만난날', 
                style: TextStyle(color: Colors.white, fontFamily: 'sunflower', fontSize: 30.0)),
              Text(DateFormat('yyyy. MM. dd').format(selectedDate),
                style: TextStyle(color: Colors.white, fontFamily: 'sunflower', fontSize: 20.0)),
            ],
          ),
          IconButton(
            iconSize: 60.0,
            onPressed: () {
              // dialog
              showCupertinoDialog(
                context: context, 
                barrierDismissible: true, // 외부 클릭시 종료 기능을 활성화한다.
                builder: (BuildContext context) {
                  return Align( // 정렬 기준이 없으면 전체를 차지하게된다.
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      height: 300.0,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: selectedDate,
                        maximumDate: DateTime(
                          now.year, now.month, now.day
                        ),
                        onDateTimeChanged: (DateTime date) {
                          setState(() {
                            selectedDate = date;
                          });
                        },
                      ),
                    ),
                  );
                }
              );
            }, 
            icon: Icon(Icons.favorite, color: Colors.red[300])
          ),
          Text('D-${
              DateTime(
                now.year, 
                now.month, 
                now.day
              ).difference(selectedDate).inDays + 1
            }',
            style: TextStyle(color: Colors.white, fontFamily: 'sunflower', fontSize: 50.0, fontWeight: FontWeight.w700))
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset('asset/u_and_i/img/sunflower.png'));
  }
}