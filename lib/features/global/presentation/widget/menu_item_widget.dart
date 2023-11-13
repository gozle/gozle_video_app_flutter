import 'package:flutter/material.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.onTap,
    required this.label,
    this.textColor,
    this.prefixIcon,
    this.suffixIcon,
  });

  final Function() onTap;

  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final Color? textColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWrapper(
      onTap: onTap,
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            if (prefixIcon != null) const SizedBox(width: 20),
            if (prefixIcon != null) prefixIcon!,
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            if (suffixIcon != null) suffixIcon!,
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
