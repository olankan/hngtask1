// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:hngtask1/SplashScreen.dart';
import 'package:hngtask1/profileScreen.dart';
import 'package:hngtask1/githubWebView.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (BuildContext context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      routes: {
        ProfileScreen.id: (context) => ProfileScreen(),
        WebViewScreen.id: (context) => WebViewScreen(),
      },
    );
  }
}
