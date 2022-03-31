import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:flutter_task/utills/iutills.dart';
import 'package:flutter_task/widgets/background_widget.dart';
import 'package:flutter_task/widgets/primary_text.dart';
import 'package:flutter_task/widgets/textfield_widget.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import '../../../widgets/diagnal_clipper.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = 'signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BackgroundWidget(),

            Padding(
              padding: const EdgeInsets.only(top: 150.0, left: 22,right: 22),
              child: RotationTransition(
                  turns: new AlwaysStoppedAnimation(180 / 360),
                  child: CustomLoginContainer(
                    width: getScreenWidth(context),
                    height: getScreenHeight(context) - 220,
                    child: SingleChildScrollView(
                        child: SingleChildScrollView(
                            child:    RotationTransition(
                              turns: new AlwaysStoppedAnimation(180 / 360),
                              child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:14.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: MaterialButton(
                                color: Colors.pinkAccent,
                                shape: CircleBorder(),
                                onPressed: () {},
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        PrimaryText(
                          "LOGO",
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        iAuthTextField(
                          hint: "Name",
                          isPassword: false,
                          sufIcon: Icons.person,
                          secure: false,
                        ),
                        iAuthTextField(
                          hint: "Email",
                          isPassword: false,
                          sufIcon: Icons.email,
                          secure: false,
                        ),
                        iAuthTextField(
                          hint: "Password",
                          isPassword: true,
                          sufIcon: Icons.key,
                          secure: false,
                        ),
                        iAuthTextField(
                          hint: "Confirm Password",
                          isPassword: true,
                          sufIcon: Icons.key,
                          secure: false,
                        ),
                        SizedBox(
                          height: 50,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 12.0,bottom: 10),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(
                                width: 120,
                                height: 50,
                                child: RaisedButton(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(80.0)),
                                  padding: const EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Colors.pinkAccent,
                                          Colors.redAccent,
                                        ],
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(80.0)),
                                    ),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                          minWidth: 50.0, minHeight: 36.0),
                                      // min sizes for Material buttons
                                      alignment: Alignment.center,
                                      child: PrimaryText(
                                        'Sign Up',
                                        textAlign: TextAlign.center,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),

                      ],
                    ),
                            ))),
                  )),
            ),
            Positioned(
              top: 120,
              left: 120,
              child: RotationTransition(
                turns: new AlwaysStoppedAnimation(10 / 360),
                child: Row(
                  children: [
                    SignInButton.mini(
                      buttonType: ButtonType.google,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.facebook,
                      onPressed: () {},
                    ),
                    SignInButton.mini(
                      buttonType: ButtonType.twitter,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -80,
              right: 15,

              child: RotationTransition(
                turns: new AlwaysStoppedAnimation(360/360),
                child: ClipPath(
                  clipper: DiagonalPathClipperOne(),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: MaterialButton(
                            color: Colors.pinkAccent,
                            shape: CircleBorder(),
                            onPressed: () {
                              Navigator.pushNamed(context,SignUpScreen.routeName);
                            }, child: Icon(Icons
                            .arrow_downward, color: Colors.white,)),
                      ),
                    ),
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
