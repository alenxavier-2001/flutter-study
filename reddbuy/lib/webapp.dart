import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(WebApp());

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: Container(
          child: SafeArea(
            child: WebView(
              initialUrl: 'http://reddbuy.epizy.com/',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WebSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'http://reddbuy.epizy.com/',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
