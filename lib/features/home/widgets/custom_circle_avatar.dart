import 'package:electronic_sebha/core/styles/size_app.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    this.backgroundColor = Colors.black26,
    required this.child,
    this.radius = SizeApp.s30,
  });

  final Color? backgroundColor;
  final Widget child;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radius,
      child: child,
    );
  }
}
