import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_subscription_cubit/channel_subscription_cubit.dart';
import 'package:video_gozle/features/channel/presentation/screen/channel_details_screen.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';
import 'package:video_gozle/features/nav/presentation/widget/nav_key_provider.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/subscribe_button.dart';

class ChannelListItemWidget extends StatelessWidget {
  final Channel channel;
  const ChannelListItemWidget({
    super.key,
    required this.channel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        height: 60,
        child: Stack(
          children: [
            InkWrapper(
              onTap: () {
                context.read<VideoBloc>().add(const VideoEvent.minimize());

                final navigator =
                    NavKeyProvider.maybeOf(context)?.navKey.currentState ?? Navigator.of(context);

                navigator.pushNamed(
                  ChannelDetailsScreen.routeName,
                  arguments: {
                    'channel_id': channel.pk,
                    'channel_name': channel.name,
                  },
                );
              },
              child: Row(
                children: [
                  const SizedBox(width: 5),
                  CircleAvatar(
                      radius: 23,
                      backgroundColor: Theme.of(context).secondaryHeaderColor,
                      backgroundImage: Image.network('${channel.channelAvatar}').image),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      channel.name ?? '',
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 1,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 5),
                ],
              ),
            ),
            Positioned(
              right: 5,
              child: BlocProvider(
                create: (context) {
                  return ChannelSubscriptionCubit(
                    channelId: channel.pk,
                    isSubscribed: channel.isSubscribed ?? false,
                  );
                },
                child: const SubscribeButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
