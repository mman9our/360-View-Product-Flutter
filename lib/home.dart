import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePageScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 230, 230, 240),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: WebView(
                initialUrl: 'https://app.vectary.com/p/17LQUJrNHJu1dkPkwzJYiC',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text("Hoodie",
                  style: TextStyle(color: Colors.black87, fontSize: 25)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text("this is hoodie product in our store",
                  style: TextStyle(color: Colors.grey)),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text("Quantiy", style: TextStyle(color: Colors.black87)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    color: Colors.black87,
                  ),
                  Text("1", style: TextStyle(color: Colors.black87)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
