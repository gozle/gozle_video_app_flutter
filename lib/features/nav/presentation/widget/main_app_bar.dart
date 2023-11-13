import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/search/presentation/screen/search_screen.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(bottom != null ? 90 : 50);

  final PreferredSizeWidget? bottom;
  const MainAppBar({
    super.key,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 50,
      title: Row(
        children: [
          SvgPicture.asset(
            Theme.of(context).brightness == Brightness.dark
                ? AppAssets.appBarDarkLogo
                : AppAssets.appBarLightLogo,
            height: 30,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(SearchScreen.routeName);
          },
          icon: SvgPicture.asset(
            AppAssets.searchIcon,
            height: 25,
            width: 25,
            colorFilter: ColorFilter.mode(
              context.theme.iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
      bottom: bottom,
    );
  }
}
