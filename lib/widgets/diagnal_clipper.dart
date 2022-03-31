import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class CustomLoginContainer extends StatefulWidget {
  Widget child;
  double height,width;

  CustomLoginContainer({required this.child, required this.width,required this.height});

  @override
  State<CustomLoginContainer> createState() => _CustomLoginContainerState();
}

class _CustomLoginContainerState extends State<CustomLoginContainer> {
  @override
  Widget build(BuildContext context) {
    return   ClipPath(
   clipper: DiagonalPathClipperOne(),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          color: Colors.white,
        ),
        child: widget.child),
      );
  }
}
