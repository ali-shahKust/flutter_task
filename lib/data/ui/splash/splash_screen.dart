import 'package:flutter/material.dart';
import 'package:flutter_task/utills/iutills.dart';
import 'package:flutter_task/widgets/background_widget.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: getScreenWidth(context),
            height: getScreenHeight(context),
            child: BackgroundWidget(),
          )
        ],
      ),
    );
  }
}
