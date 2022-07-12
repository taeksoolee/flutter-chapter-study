import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewScreen extends StatelessWidget {
  WebViewController? controller;
  String initialUrl = 'https://google.com';

  WebViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('naver site'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
              onPressed: () {
                // print('click!');
                if(this.controller == null) {
                  return;
                }

                this.controller!.loadUrl(initialUrl); // android studio는 예외 처리한걸 모르므로 null 처리를 해야한다.
              },
              icon: Icon(Icons.home),
          )
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: initialUrl,
        javascriptMode: JavascriptMode.unrestricted, // <= javascript를 실행할수 있도록 한다.
      )
    );
  }
}

