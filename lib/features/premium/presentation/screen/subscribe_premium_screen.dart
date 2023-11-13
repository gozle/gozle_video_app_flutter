import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_gozle/core/app_assets.dart';

class SubscribePremiumScreen extends StatefulWidget {
  static String routeName = 'subscribe-premium';
  const SubscribePremiumScreen({super.key});

  @override
  State<SubscribePremiumScreen> createState() => _SubscribePremiumScreenState();
}

class _SubscribePremiumScreenState extends State<SubscribePremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).iconTheme.color,
        ),
        title: const Text('Оформить подписку'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48, width: double.infinity),
            Center(
              child: SvgPicture.asset(
                AppAssets.appBarLightLogo,
                height: 40,
              ),
            ),
            const SizedBox(height: 48),
            const PremiumDescriptionWidget(
              title: 'Нет рекламы/фоновый режим',
              description:
                  'Видео без рекламы и в фоновом режиме при работе с другими приложениями и при заблокированном экране.',
            ),
            const SizedBox(height: 15),
            const PremiumDescriptionWidget(
              title: 'Офлайн-режим',
              description:
                  'Сохраняйте ролики и смотрите их где угодно, например в общественном транспорте или самолете.',
            ),
            const SizedBox(height: 15),
            const PremiumDescriptionWidget(
              title: 'Трансляции',
              description: 'Смотрите экслюзивные онлайн трансляции ',
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Оформить подписку'),
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PremiumDescriptionWidget extends StatelessWidget {
  const PremiumDescriptionWidget({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 318,
          child: Opacity(
            opacity: 0.35,
            child: Text(
              description,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
