import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/global/presentation/widget/channel_item_widget/channel_list_item_widget.dart';
import 'package:video_gozle/features/subscriptions/presentation/logic/subscribed_channel_list_bloc/subscribed_channel_list_bloc.dart';
import 'package:video_gozle/generated/l10n.dart';

class SubscribedChannelListScreen extends StatefulWidget {
  static String routeName = 'subscribed_channels_screen';

  const SubscribedChannelListScreen({super.key});

  @override
  State<SubscribedChannelListScreen> createState() => _SubscribedChannelListScreenState();
}

class _SubscribedChannelListScreenState extends State<SubscribedChannelListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(S.current.subscriptions),
      ),
      body: BlocBuilder<SubscribedChannelListBloc, SubscribedChannelListState>(
        builder: (context, state) {
          return state.when(
            loading: (oldChannels) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (channels, hasReachedMax) {
              return ListView.builder(
                itemCount: channels.length,
                itemBuilder: (context, index) {
                  final channel = channels[index];
                  return ChannelListItemWidget(channel: channel);
                },
              );
            },
            error: (falure, oldChannels, lastEvent) {
              return Container();
            },
          );
        },
      ),
    );
  }
}
