import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({super.key});

  static void show(
    BuildContext context, {
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      content: Text(
        message,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      behavior: SnackBarBehavior.floating,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
