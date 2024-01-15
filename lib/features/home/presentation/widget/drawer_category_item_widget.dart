//TODO: if no need clear it

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:video_gozle/core/theme.dart';
//
// class DrawerCategoryItemWidget extends StatelessWidget {
//   final VoidCallback onTap;
//   final String? iconAsset;
//   final String? name;
//   final bool isSelected;
//
//   const DrawerCategoryItemWidget({
//     super.key,
//     this.iconAsset,
//     required this.onTap,
//     required this.isSelected,
//     required this.name,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     // LIGHT
//     var lightCategoryStyle = ButtonStyle(
//       backgroundColor: isSelected
//           ? MaterialStatePropertyAll(Theme.of(context).primaryColor)
//           : const MaterialStatePropertyAll(Color(0xFFE7E7E7)),
//       elevation: const MaterialStatePropertyAll(0),
//       foregroundColor: isSelected
//           ? const MaterialStatePropertyAll(Colors.white)
//           : const MaterialStatePropertyAll(Color(0xFF292D32)),
//       shape: MaterialStatePropertyAll(
//         RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
//       ),
//     );
//     // DARK
//     var darkCategoryStyle = ButtonStyle(
//       backgroundColor: isSelected
//           ? MaterialStatePropertyAll(Theme.of(context).primaryColor)
//           : MaterialStatePropertyAll(Theme.of(context).secondaryHeaderColor),
//       elevation: const MaterialStatePropertyAll(0),
//       foregroundColor: isSelected
//           ? MaterialStatePropertyAll(Theme.of(context).secondaryHeaderColor)
//           : const MaterialStatePropertyAll(Colors.white),
//       shape: MaterialStatePropertyAll(
//         RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
//       ),
//     );
//     var iconColor = isSelected
//         ? (context.theme.brightness == Brightness.dark
//         ? Theme.of(context).secondaryHeaderColor
//         : Colors.white)
//         : (context.theme.brightness == Brightness.dark ? Colors.white : const Color(0xFF292D32));
//     return ListTile(
//       onTap: onTap,
//       // style: context.theme.brightness == Brightness.dark
//       //     ? name!.isEmpty && iconAsset == null ? darkCategoryStyle.copyWith(
//       //   minimumSize: const MaterialStatePropertyAll(
//       //     Size(1, 32),
//       //   ),
//       //   maximumSize: const MaterialStatePropertyAll(
//       //     Size(1 , 32),
//       //   ),
//       // ) : darkCategoryStyle
//       //     : lightCategoryStyle,
//       leading: iconAsset != null
//           ? SvgPicture.asset(
//         iconAsset ?? '',
//         height: 20,
//         width: 20,
//         color: iconColor,
//       ): const SizedBox(),
//       title: Text(
//         name ?? '',
//         // style: textTheme,
//       )
//     );
//   }
// }
