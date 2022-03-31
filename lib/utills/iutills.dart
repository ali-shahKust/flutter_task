import 'package:flutter/material.dart';
import 'package:flutter_task/utills/theme_constants.dart';

double getScreenWidth(context)=> MediaQuery.of(context).size.width;
double getScreenHeight(context)=> MediaQuery.of(context).size.height;



void showMessage({
  required BuildContext context,
  required String text,
  Color backgroundColor = primaryColor,
  Color textColor = Colors.white,
}) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      backgroundColor: backgroundColor,
    ),
  );
}