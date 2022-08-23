import 'package:flutter/material.dart';

class UAndIScreen extends StatefulWidget {
  const UAndIScreen({ Key? key }) : super(key: key);

  @override
  State<UAndIScreen> createState() => _UAndIScreenState();
}

class _UAndIScreenState extends State<UAndIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300], // default: 500
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text('U & I', 
                style: TextStyle(color: Colors.white, fontFamily: 'parisienne', fontSize: 80.0)),
              Text('우리 처음 만난날', 
                style: TextStyle(color: Colors.white, fontFamily: 'sunflower', fontSize: 30.0)),
              Text('2017. 03. 24',
                style: TextStyle(color: Colors.white, fontFamily: 'sunflower', fontSize: 20.0)),
              IconButton(
                iconSize: 60.0,
                onPressed: () {
      
                }, 
                icon: Icon(Icons.favorite, color: Colors.red[300])
              ),
              Text('D+1',
                style: TextStyle(color: Colors.white, fontFamily: 'sunflower', fontSize: 50.0, fontWeight: FontWeight.w700))
            ],
          ),
        ),
      ),
    );
  }
}