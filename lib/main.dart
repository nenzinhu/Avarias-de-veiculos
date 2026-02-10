import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(home: WebViewApp()));

class WebViewApp extends StatefulWidget {
  @override
  _WebViewAppState createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadFlutterAsset('index.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checklist de Avarias')),
      body: WebViewWidget(controller: controller),
    );
  }
}
