// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_subscription_cubit/channel_subscription_cubit.dart';
import 'package:video_gozle/features/subscriptions/presentation/logic/subscribed_channel_list_bloc/subscribed_channel_list_bloc.dart';
import 'package:video_gozle/generated/l10n.dart';

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChannelSubscriptionCubit, ChannelSubscriptionState>(
      builder: (context, state) {
        final isSubscribed = state.when(subscribed: () => true, unsubscribed: () => false);

        return ElevatedButton(
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            elevation: const MaterialStatePropertyAll(0),
            foregroundColor: isSubscribed
                ? MaterialStatePropertyAll(context.theme.primaryColor)
                : MaterialStatePropertyAll(context.theme.disabledColor),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: isSubscribed
                    ? BorderSide(color: context.theme.primaryColor)
                    : BorderSide(color: context.theme.disabledColor),
              ),
            ),
          ),
          onPressed: () async {
            if (isSubscribed) {
              await context.read<ChannelSubscriptionCubit>().unsubscribe();
            } else {
              await context.read<ChannelSubscriptionCubit>().subscribe();
            }
            context.read<SubscribedChannelListBloc>().add(const SubscribedChannelListEvent.load());
          },
          child: Text(
            isSubscribed ? S.current.subscribed : S.current.subscribe,
          ),
        );
      },
    );
  }
}
