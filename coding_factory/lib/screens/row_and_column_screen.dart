import 'package:flutter/material.dart';


class Box extends StatelessWidget {
  const Box({ Key? key ,this.color}) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
      width: 50.0, // px
      height: 50.0, // px
    );
  }
}

class RowAndColumnScreen extends StatelessWidget {
  const RowAndColumnScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black, // Container
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Box(color: Colors.red),
                  Box(color: Colors.orange),
                  Box(color: Colors.yellow),
                  Box(color: Colors.green),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Box(color: Colors.orange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Box(color: Colors.red),
                  Box(color: Colors.orange),
                  Box(color: Colors.yellow),
                  Box(color: Colors.green),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Box(color: Colors.green),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}