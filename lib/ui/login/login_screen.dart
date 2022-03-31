import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_task/ui/login/login_vm.dart';
import 'package:flutter_task/ui/sign_up/sign_up_screen.dart';

import 'package:flutter_task/utills/iutills.dart';
import 'package:flutter_task/widgets/background_widget.dart';
import 'package:flutter_task/widgets/primary_text.dart';
import 'package:flutter_task/widgets/shimmer.dart';
import 'package:flutter_task/widgets/textfield_widget.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'dart:math' as math;
import '../../../utills/theme_constants.dart';
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
      body: Consumer<LoginVm>(
        builder: (context, vm, _){
          if( vm.isLoading){
            return
                Center(child: SpinKitWave(color: primaryColor,));

          }
          else {
            return Stack(
              children: [
                BackgroundWidget(),
                Positioned(
                  bottom: 150,
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
                  bottom: -80,
                  left: 15,
                  child: RotationTransition(
                    turns: new AlwaysStoppedAnimation(180 / 360),
                    child: ClipPath(
                      clipper: DiagonalPathClipperOne(),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5.0)),
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
                                  Navigator.pushNamed(
                                      context, SignUpScreen.routeName);
                                },
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TranslationAnimatedWidget(
                  enabled: true, //update this boolean to forward/reverse the animation
                  values: [
                    Offset(0, 200), // disabled value value
                    Offset(0, 250), //intermediate value
                    Offset(0, 0) //enabled value
                  ],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50.0, horizontal: 22),
                    child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(180),
                        child: CustomLoginContainer(
                          width: getScreenWidth(context),
                          height: getScreenHeight(context) - 230,
                          child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 50,
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
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 12),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: PrimaryText(
                                          "Forgot Password ?",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black45,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: SizedBox(
                                        width: 120,
                                        height: 50,
                                        child: RaisedButton(
                                          onPressed: () async {
                                            await vm.login(context: context,
                                                email: "eve.holt@reqres.in",
                                                password: "cityslicka");
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(80.0)),
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
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(80.0)),
                                            ),
                                            child: Container(
                                              constraints: const BoxConstraints(
                                                  minWidth: 50.0,
                                                  minHeight: 36.0),
                                              // min sizes for Material buttons
                                              alignment: Alignment.center,
                                              child: PrimaryText(
                                                'Login',
                                                textAlign: TextAlign.center,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 90.0),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: MaterialButton(
                                          color: Colors.pinkAccent,
                                          shape: CircleBorder(),
                                          onPressed: () {},
                                          child: Icon(
                                            Icons.arrow_upward,
                                            color: Colors.white,
                                          )),
                                    ),
                                  )
                                ],
                              )),
                        )),
                  ),
                ),
              ],
            );
          }},
      ),
    );
  }
}
