import 'dart:async';

import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/ui/splash/splash_vm.dart';

import 'package:flutter_task/utills/iutills.dart';
import 'package:flutter_task/widgets/background_widget.dart';
import 'package:provider/provider.dart';

import '../login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
        context,
        LoginScreen.routeName,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SplashVm>(
      builder: (context, vm, index) => Scaffold(
        body: Stack(
          children: [
            Center(
              child: Container(
                // color: Colors.red,
                child: vm.spinkit,
              ),
            ),
            Center(
              child: Container(
                  width: 120,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(0).copyWith(left: 10),
                    child: TranslationAnimatedWidget(
                      enabled: true,
                      //update this boolean to forward/reverse the animation
                      values: [
                        Offset(0, 200), // disabled value value
                        Offset(0, 250), //intermediate value
                        Offset(0, 0) //enabled value
                      ],
                      child: FlutterLogo(),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
