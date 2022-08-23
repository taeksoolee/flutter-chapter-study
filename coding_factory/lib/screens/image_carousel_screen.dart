import 'dart:async';

import 'package:flutter/material.dart';

class ImageCarouselScreen extends StatefulWidget {
  const ImageCarouselScreen({ Key? key }) : super(key: key);

  @override
  State<ImageCarouselScreen> createState() => _ImageCarouselScreenState();
}

class _ImageCarouselScreenState extends State<ImageCarouselScreen> {
  List<int> sequence = [1,2,3,4];

  Timer? timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 1), (timer) { 
      print('timer!');
    });
  }

  @override
  void dispose() {
    if(timer != null) {
      timer!.cancel();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: sequence
          .map((e) => 
            Image.asset('asset/image_carousel/image_$e.jpeg', fit: BoxFit.cover)
          ).toList(),
      ),
    );
  }
}