import 'package:flutter/material.dart';

class ImageCarouselScreen extends StatefulWidget {
  const ImageCarouselScreen({ Key? key }) : super(key: key);

  @override
  State<ImageCarouselScreen> createState() => _ImageCarouselScreenState();
}

class _ImageCarouselScreenState extends State<ImageCarouselScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Image.asset('asset/image_carousel/image_1.jpeg', fit: BoxFit.cover),
          Image.asset('asset/image_carousel/image_2.jpeg', fit: BoxFit.cover),
          Image.asset('asset/image_carousel/image_3.jpeg', fit: BoxFit.cover),
          Image.asset('asset/image_carousel/image_4.jpeg', fit: BoxFit.cover),
        ],
      ),
    );
  }
}