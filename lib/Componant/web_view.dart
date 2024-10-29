import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewComponent extends StatefulWidget {
  const WebViewComponent({super.key});

  @override
  State<WebViewComponent> createState() => _WebViewComponentState();
}

class _WebViewComponentState extends State<WebViewComponent> {
  late final WebViewController controller;
 // Controller for the WebView
  final String initialUrl = 'https://flutter.dev';
 // URL to load initially
  @override
  void initState() {
    super.initState(); controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // Enable JavaScript
      ..setBackgroundColor(const Color(0x00000000)) // Set transparent background
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading progress
          },
          onPageStarted: (String url) {
            // Page loading started
          },
          onPageFinished: (String url) {
            // Page loading finished
          },
          onWebResourceError: (WebResourceError error) {
            // Handle errors
          },
          onNavigationRequest: (NavigationRequest request) {
            // Control navigation requests
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent; // Prevent navigation to YouTube
            }
            return NavigationDecision.navigate; // Allow other navigation
          },
        ),
      )
      ..loadRequest(Uri.parse('https://flutter.dev')); // Load initial URL
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple WebView')),
      body: WebViewWidget(controller: controller), // Display the WebView
    );
  }
}
