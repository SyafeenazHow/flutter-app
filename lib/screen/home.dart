import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
  late WebViewPlusController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: WebViewPlus(
            initialUrl: "assets/dashboard.html",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              this.controller = controller;
                         
             },             
          )
        )
      ),
    );
  }
}
