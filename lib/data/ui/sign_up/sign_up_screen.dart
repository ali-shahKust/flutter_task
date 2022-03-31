import 'package:flutter/material.dart';

import '../../../utills/iutills.dart';
import '../../../widgets/background_widget.dart';
import '../../../widgets/diagnal_clipper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          RotationTransition(
              turns: new AlwaysStoppedAnimation(180 / 360),
              child: CustomLoginContainer(width: getScreenWidth(context),height: getScreenHeight(context)-250,child: SingleChildScrollView(child: Column()),))
        ],
      ),
    );
  }
}
