import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/core/app_utils.dart';

import '../../../../generated/l10n.dart';
import '../../../channel/domain/models/channel_model.dart';
import '../../../channel/presentation/logic/channel_subscription_cubit/channel_subscription_cubit.dart';
import '../../../global/presentation/widget/place_holder.dart';
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
          const SizedBox(
            height: 19,
            width: 150,
            child: CustomPlaceholder(),
          ),
          const SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              3,
              (index) => const Column(
                children: [
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: CustomPlaceholder(borderRadius: 50),
                  ),
                  SizedBox(height: 7),
                  SizedBox(
                    height: 18,
                    width: 50,
                    child: CustomPlaceholder(),
                  ),
                  SizedBox(height: 7),
                  SizedBox(
                    height: 14,
                    width: 70,
                    child: CustomPlaceholder(),
                  ),
                  SizedBox(height: 7),
                  SizedBox(
                    height: 34,
                    width: 100,
                    child: CustomPlaceholder(
                      borderRadius: 42,
                    ),
                  ),
                ],
              ),
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
    log(widget.channel[1].isSubscribed.toString());
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.current.popular_channels,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widget.channel
                .slice(0, 3)
                .map(
                  (e) => Flexible(
                    child: Column(
                      children: [
                        const SizedBox(height: 7),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: SizedBox(
                            width: 90,
                            height: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CachedNetworkImage(
                                imageUrl: e.channelAvatar ?? '',
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
                          e.name ?? '',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          AppUtils.formatViews(e.view),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        BlocProvider(
                          create: (context) {
                            return ChannelSubscriptionCubit(
                                channelId: e.pk, isSubscribed: e.isSubscribed ?? false);
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 108,
                                child: SubscribeButton(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
