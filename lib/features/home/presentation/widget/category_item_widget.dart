import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_gozle/core/theme.dart';

class CategoryItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String? iconAsset;
  final String? name;
  final bool isSelected;

  const CategoryItemWidget({
    super.key,
    this.iconAsset,
    required this.onTap,
    required this.isSelected,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    // LIGHT
    var lightCategoryStyle = ButtonStyle(
      backgroundColor: isSelected
          ? MaterialStatePropertyAll(Theme.of(context).primaryColor)
          : const MaterialStatePropertyAll(Color(0xFFE7E7E7)),
      elevation: const MaterialStatePropertyAll(0),
      foregroundColor: isSelected
          ? const MaterialStatePropertyAll(Colors.white)
          : const MaterialStatePropertyAll(Color(0xFF292D32)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    );
    // DARK
    var darkCategoryStyle = ButtonStyle(
      backgroundColor: isSelected
          ? MaterialStatePropertyAll(Theme.of(context).primaryColor)
          : MaterialStatePropertyAll(Theme.of(context).secondaryHeaderColor),
      elevation: const MaterialStatePropertyAll(0),
      foregroundColor: isSelected
          ? MaterialStatePropertyAll(Theme.of(context).secondaryHeaderColor)
          : const MaterialStatePropertyAll(Colors.white),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    );
    return ElevatedButton(
      onPressed: onTap,
      style: context.theme.brightness == Brightness.dark ? darkCategoryStyle : lightCategoryStyle,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconAsset != null
              ? SvgPicture.asset(
                  iconAsset ?? '',
                  height: 20,
                  width: 20,
                )
              : const SizedBox(),
          Offstage(
            offstage: iconAsset == null,
            child: const SizedBox(width: 5),
          ),
          Builder(builder: (context) {
            TextStyle? textTheme;
            if (isSelected) {
              textTheme = const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              );
            } else {
              textTheme = const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              );
            }
            return Text(
              name ?? '',
              style: textTheme,
            );
          }),
        ],
      ),
    );
  }
}
