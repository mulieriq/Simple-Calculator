import 'package:flutter/material.dart';

// Handles spacing in the widget tree
class CalculatorSizedBox extends StatelessWidget {
  const CalculatorSizedBox({super.key, this.height, this.width, this.child});

  final double? height;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}
