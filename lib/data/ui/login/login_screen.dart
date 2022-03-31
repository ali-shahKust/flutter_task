import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_task/utills/iutills.dart';
import 'package:flutter_task/widgets/background_widget.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'dart:math' as math;
import '../../../widgets/diagnal_clipper.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 22),
            child: RotationTransition(
                turns: new AlwaysStoppedAnimation(180),
                child: CustomLoginContainer(
                  width: getScreenWidth(context),
                  height: getScreenHeight(context)-250 ,
                  child: SingleChildScrollView(child: Column()),
                )),
          ),
          Row(
            children: [
              SignInButton.mini(
                buttonType: ButtonType.google,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
