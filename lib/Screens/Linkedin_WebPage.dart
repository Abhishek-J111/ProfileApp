import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
 import 'package:webview_flutter/webview_flutter.dart';
 class LinkedinWeb extends StatefulWidget {
  
   const LinkedinWeb({ Key? key }) : super(key: key);
 
   @override
   _LinkedinWebState createState() => _LinkedinWebState();
 }
 
 class _LinkedinWebState extends State<LinkedinWeb> {
    @override
   void initState() {
     super.initState();
         // Enable hybrid composition.
 if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
   }
   @override
   Widget build(BuildContext context) {
      final Completer<WebViewController> _controller = Completer<WebViewController>();
     return Scaffold(
      
       body: WebView(
         initialUrl: 'https://www.linkedin.com/in/abhishek-j111/',
         onWebViewCreated: (WebViewController webViewController){
           _controller.complete(webViewController);
         },
       ),
     );
   }
 }