import 'package:flutter/material.dart';
import 'controls.dart';

class PlayerControlls extends StatefulWidget {
  final Widget? customControls;

  const PlayerControlls({
    super.key,
    this.customControls,
  });

  @override
  State<PlayerControlls> createState() => _PlayerControllsState();
}

class _PlayerControllsState extends State<PlayerControlls> {
  @override
  Widget build(BuildContext context) {
    if (widget.customControls != null) {
      return widget.customControls!;
      // Default
    } else {
      return const DefaultContols();
    }
  }
}
