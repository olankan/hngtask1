// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, duplicate_import, depend_on_referenced_packages
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewScreen extends StatefulWidget {
  static String id = 'githubWebViewScreen';

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  InAppWebViewController? _webViewController;
  @override
  void initState() {
    super.initState();
    Future main() async {
      WidgetsFlutterBinding.ensureInitialized();

      if (Platform.isAndroid) {
        await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(
            true);

        var swAvailable = await AndroidWebViewFeature.isFeatureSupported(
            AndroidWebViewFeature.SERVICE_WORKER_BASIC_USAGE);
        var swInterceptAvailable =
            await AndroidWebViewFeature.isFeatureSupported(
                AndroidWebViewFeature.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST);

        if (swAvailable && swInterceptAvailable) {
          AndroidServiceWorkerController serviceWorkerController =
              AndroidServiceWorkerController.instance();

          await serviceWorkerController
              .setServiceWorkerClient(AndroidServiceWorkerClient(
            shouldInterceptRequest: (request) async {
              print(request);
              return null;
            },
          ));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest:
              URLRequest(url: Uri.parse('https://www.github.com/olankan')),
          onWebViewCreated: (controller) {
            _webViewController = controller;
          },
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              javaScriptEnabled: true,
              // Enable debugging
            ),
          ),
          onProgressChanged: (controller, progress) {
            // Handle progress changes here
          },
          onLoadStop: (controller, url) {
            // Handle page load completion
          },
        ),
      ),
    );
  }
}
