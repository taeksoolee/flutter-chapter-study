import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  WebViewController? controller;

  WebViewScreen({ Key? key }) : super(key: key);

  String homeUrl = 'https://taeksoolee.github.io';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade300,
        title: Text('Taeksoolee Blog'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              if(controller == null) {
                return;
              }

              controller!.loadUrl(homeUrl);
            },
          )
        ],
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: homeUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
        ),
      ),
    );
  }
}