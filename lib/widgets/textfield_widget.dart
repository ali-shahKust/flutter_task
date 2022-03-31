import 'package:flutter/material.dart';

class iAuthTextField extends StatefulWidget {
  TextEditingController? controller;
  var sufIcon;
  String? hint;
  bool? isPassword, secure;

  iAuthTextField(
      {this.controller, this.hint, this.isPassword, this.secure, this.sufIcon});

  @override
  _iAuthTextFieldState createState() => _iAuthTextFieldState();
}

class _iAuthTextFieldState extends State<iAuthTextField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
        child: TextField(
          controller: widget.controller,
          obscureText: widget.secure!,
          style: TextStyle(color: Color(0xff0a0a0a)),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 15, left: 15),
            hintText: widget.hint!,
            suffixIcon: Icon(
              widget.sufIcon,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
