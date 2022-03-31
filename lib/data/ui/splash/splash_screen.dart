import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_task/data/ui/login/login_screen.dart';
import 'package:flutter_task/utills/iutills.dart';
import 'package:flutter_task/widgets/background_widget.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, LoginScreen.routeName,);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        ],
      ),
    );
  }
}
