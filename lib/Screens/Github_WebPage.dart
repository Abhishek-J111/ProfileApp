import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
 import 'package:webview_flutter/webview_flutter.dart';
 class GithubWeb extends StatefulWidget {
  
   const GithubWeb({ Key? key }) : super(key: key);
 
   @override
   _GithubWebState createState() => _GithubWebState();
 }
 
 class _GithubWebState extends State<GithubWeb> {
    @override
   void initState() {
     super.initState();
       
 if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
   }
   @override
   Widget build(BuildContext context) {
      final Completer<WebViewController> _controller = Completer<WebViewController>();
     return Scaffold(
      
       body: WebView(
         initialUrl: 'https://github.com/Abhishek-J111',
         onWebViewCreated: (WebViewController webViewController){
           _controller.complete(webViewController);
         },
       ),
     );
   }
 }