import 'package:flutter/material.dart';

class LoadingVideoDetailsWidget extends StatelessWidget {
  final String videoId;
  final String? title;
  const LoadingVideoDetailsWidget({
    super.key,
    required this.videoId,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? '',
              maxLines: 2,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(),
            const Center(child: CircularProgressIndicator()),
            const Spacer(),
          ],
        ));
  }
}
