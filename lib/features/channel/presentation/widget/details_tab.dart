import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/channel/presentation/logic/channel_details_cubit/channel_details_cubit.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<ChannelDetailsCubit, ChannelDetailsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (channel) {
              return Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Linkify(
                      onOpen: (link) async {
                        if (!await launchUrl(Uri.parse(link.url))) {
                          throw Exception('Не удалось открыть ссылку: ${link.url}');
                        }
                      },
                      text: "${channel.description}",
                      style: Theme.of(context).textTheme.bodyMedium,
                      linkStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.GOZLE_COLOR),
                    ),
                  ],
                ),
              );
            },
            orElse: () {
              return const Center(child: CircularProgressIndicator.adaptive());
            },
          );
        },
      ),
    );
  }
}
