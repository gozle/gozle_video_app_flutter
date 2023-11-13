import 'package:flutter/material.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';
import 'package:video_gozle/features/global/presentation/widget/place_holder.dart';

class ChannelListItemVerticalWidget extends StatelessWidget {
  final Channel channel;
  final Function() onTap;
  final bool isSelected;

  const ChannelListItemVerticalWidget({
    super.key,
    required this.channel,
    required this.onTap,
    required this.isSelected,
  });

  static Widget placeHolder(BuildContext context) {
    return Container(
      width: 80,
      padding: const EdgeInsets.all(5),
      child: const Column(
        children: [
          SizedBox(
              height: 50,
              width: 50,
              child: CustomPlaceholder(
                borderRadius: 50,
              )),
          SizedBox(height: 10),
          SizedBox(
            height: 10,
            width: 50,
            child: CustomPlaceholder(),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 10,
            width: 50,
            child: CustomPlaceholder(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWrapper(
      onTap: onTap,
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Theme.of(context).secondaryHeaderColor : null,
        ),
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              backgroundImage: Image.network('${channel.channelAvatar}').image,
            ),
            const SizedBox(height: 5),
            Flexible(
              child: Text(
                channel.name ?? '',
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
