import 'package:flutter/material.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/generated/l10n.dart';

class SliverCustomErrorWidget extends StatelessWidget {
  final Failure failure;
  final Function() onTap;

  const SliverCustomErrorWidget({
    super.key,
    required this.failure,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            failure.getMessage(),
            style: context.textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            style: ButtonStyle(
                side: MaterialStatePropertyAll(
              BorderSide(color: Theme.of(context).textTheme.titleLarge?.color ?? Colors.white),
            )),
            onPressed: onTap,
            child: Text(
              S.current.retry,
              style: context.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
