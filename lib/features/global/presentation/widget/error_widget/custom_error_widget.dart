import 'package:flutter/material.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/generated/l10n.dart';

class CustomErrorWidget extends StatelessWidget {
  final Failure failure;
  final Function() onTap;
  const CustomErrorWidget({super.key, required this.failure, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          failure.getMessage(),
          style: context.textTheme.titleLarge,
        ),
        const SizedBox(height: 5),
        TextButton(
          onPressed: onTap,
          child: Text(S.current.retry),
        )
      ],
    );
  }
}
