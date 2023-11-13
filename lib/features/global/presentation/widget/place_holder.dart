import 'package:flutter/material.dart';

class CustomPlaceholder extends StatelessWidget {
  final double borderRadius;

  const CustomPlaceholder({
    super.key,
    this.borderRadius = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).secondaryHeaderColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}
