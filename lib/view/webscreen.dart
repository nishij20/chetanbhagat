// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreenEx extends StatefulWidget {
  String url;
  WebScreenEx({required this.url, super.key});

  @override
  State<WebScreenEx> createState() => _WebScreenExState();
}

class _WebScreenExState extends State<WebScreenEx> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (progress) {
          const CircularProgressIndicator();
        },
      ))
      ..loadRequest(Uri.parse(widget.url));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Buy Books"),
        ),
        body: WebViewWidget(
          controller: controller,
        ));
  }
}
