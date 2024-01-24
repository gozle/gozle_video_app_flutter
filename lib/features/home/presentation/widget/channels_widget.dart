import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';

import '../../../../generated/l10n.dart';
import '../../../channel/domain/models/channel_model.dart';
import '../../../channel/presentation/logic/channel_subscription_cubit/channel_subscription_cubit.dart';
import '../../../channel/presentation/screen/channel_details_screen.dart';
import '../../../global/presentation/widget/place_holder.dart';
import '../../../nav/presentation/widget/nav_key_provider.dart';
import '../../../video/presentation/video/logic/video_bloc/video_bloc.dart';
import '../../../video/presentation/video/widget/loaded/subscribe_button.dart';

class ChannelsWidget extends StatefulWidget {
  const ChannelsWidget({
    super.key,
    required this.channel,
  });

  final List<Channel> channel;

  static Widget placeHolder(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: 21,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 190,
            ),
            itemBuilder: (context, index) => const Column(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CustomPlaceholder(borderRadius: 50),
                ),
                SizedBox(height: 7),
                SizedBox(
                  height: 16,
                  width: 50,
                  child: CustomPlaceholder(),
                ),
                SizedBox(height: 7),
                SizedBox(
                  height: 13,
                  width: 70,
                  child: CustomPlaceholder(),
                ),
                SizedBox(height: 7),
                SizedBox(
                  height: 34,
                  width: 108,
                  child: CustomPlaceholder(
                    borderRadius: 42,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ChannelsWidget> createState() => _ChannelsWidgetState();
}

class _ChannelsWidgetState extends State<ChannelsWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: widget.channel.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: 180,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          context.read<VideoBloc>().add(const VideoEvent.minimize());

          final navigator = NavKeyProvider.maybeOf(context)?.navKey.currentState ??
              Navigator.of(context);

          navigator.pushNamed(
            ChannelDetailsScreen.routeName,
            arguments: {
              'channel_id': widget.channel[index].pk,
              'channel_name': widget.channel[index].name,
              'channel_view': widget.channel[index].view,
            },
          );
        },
        child: Column(
          children: [
            const SizedBox(height: 7),
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: SizedBox(
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    imageUrl: widget.channel[index].channelAvatar ?? '',
                    errorWidget: (_, __, ___) => Container(),
                    placeholder: (_, __) => Container(),
                    fit: BoxFit.cover,
                    cacheManager: CustomCacheManager.instance,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 7),
            Text(
              widget.channel[index].name ?? '',
              textAlign: TextAlign.center,
              maxLines: 1,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 13),
            ),
            Expanded(
              child: Text(
                AppUtils.formatViews(widget.channel[index].view),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            BlocProvider(
              create: (context) {
                return ChannelSubscriptionCubit(
                  channelId: widget.channel[index].pk,
                  isSubscribed: widget.channel[index].isSubscribed ?? false,
                );
              },
              child: const SubscribeButton(),
            ),
          ],
        ),
      ),
    );
  }
}
