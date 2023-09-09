import 'package:flutter/material.dart';
import 'package:hngtask1/profileScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, ProfileScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF372753),
      body: Center(
        child: Text(
          'HNG Task 1',
          style: TextStyle(
              color: Color(0xFFEC837F),
              fontSize: 50,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
