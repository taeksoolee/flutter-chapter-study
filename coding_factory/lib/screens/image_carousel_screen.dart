import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageCarouselScreen extends StatefulWidget {
  const ImageCarouselScreen({ Key? key }) : super(key: key);

  @override
  State<ImageCarouselScreen> createState() => _ImageCarouselScreenState();
}

class _ImageCarouselScreenState extends State<ImageCarouselScreen> {
  List<int> sequence = [1,2,3,4,5];
  Timer? timer;

  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 노치부분 상단 데이터에 대한 스타일을 수정한다.

    super.initState();

    timer = Timer.periodic(Duration(seconds: 1), (timer) { 
      // page가 더블인 이유는 페이지 이동 중 애니메이션이 있기 때문이다.
      int currentPage = controller.page!.toInt();
      int nextPage = currentPage + 1;

      if(nextPage > sequence.length - 1) {
        nextPage = 0;
      }

      controller.animateToPage(
        nextPage, 
        duration: Duration(milliseconds: 800), 
        curve: Curves.linear, // linear : 일정한 간격으로
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    if(timer != null) {
      timer!.cancel();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: sequence
          .map((e) => 
            Image.asset('asset/image_carousel/image_$e.jpeg', fit: BoxFit.cover)
          ).toList(),
      ),
    );
  }
}