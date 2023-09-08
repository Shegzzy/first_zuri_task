import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitWebViewScreen extends StatefulWidget {
  const GitWebViewScreen({super.key,});

  @override
  State<GitWebViewScreen> createState() => _GitWebViewScreenState();
}

class _GitWebViewScreenState extends State<GitWebViewScreen> {
  var loadingPercentage = 0;
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..loadRequest(
        Uri.parse('https://github.com/Shegzzy/first_zuri_task'),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GitHub WebView',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          WebViewWidget(
            controller: controller,
          ),
          if (loadingPercentage < 100)
            LinearProgressIndicator(
              value: loadingPercentage / 100.0,
            ),
        ],
      ),
    );
  }
}
