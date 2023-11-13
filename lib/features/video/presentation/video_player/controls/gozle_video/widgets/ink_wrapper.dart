import 'package:flutter/material.dart';

class InkWrapper extends StatelessWidget {
  final Color? splashColor;
  final BorderRadius? borderRadius;
  final Widget child;
  final VoidCallback onTap;

  const InkWrapper({
    super.key,
    this.splashColor,
    this.borderRadius,
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              splashColor: splashColor,
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
