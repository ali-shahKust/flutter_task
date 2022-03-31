import 'package:flutter/material.dart';
import 'package:flutter_task/utills/iutills.dart';
import 'package:flutter_task/utills/theme_constants.dart';

class BackgroundWidget extends StatefulWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  State<BackgroundWidget> createState() => _BackgroundWidgetState();
}

class _BackgroundWidgetState extends State<BackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
     height: getScreenHeight(context),

      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color(0x40000000),
            blurRadius: 5.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 2.0),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -250,
            right: 0,
            child: Stack(
              children: [
                Container(
                  width: getScreenWidth(context)+150,
                  height: getScreenHeight(context)-200,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    color: primaryColor,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.grey,
                          primaryColor,

                        ],
                      )
                  ),
                ),


              ],
            ),
          ),
          Positioned(
            left: 300,
            bottom: 0,
            child: Container(
              width: getScreenWidth(context),
              height: getScreenHeight(context)/2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.grey,
                      primaryColor,

                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
