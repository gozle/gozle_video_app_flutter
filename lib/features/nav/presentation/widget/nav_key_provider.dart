import 'package:flutter/material.dart';

class NavKeyProvider extends InheritedWidget {
  final GlobalKey<NavigatorState> navKey;

  const NavKeyProvider({
    super.key,
    required this.navKey,
    required super.child,
  });

  static NavKeyProvider of(BuildContext context) {
    final navKeyProvider = context.dependOnInheritedWidgetOfExactType<NavKeyProvider>();
    assert(
      navKeyProvider != null,
      'Cannot find WorldVideoPlayerControllerProvider above. Please wrap parent widget with WorldVideoPlayerControllerProvider.',
    );
    return navKeyProvider!;
  }

  static NavKeyProvider? maybeOf(BuildContext context) {
    final controllerProvider = context.dependOnInheritedWidgetOfExactType<NavKeyProvider>();

    return controllerProvider;
  }

  @override
  bool updateShouldNotify(NavKeyProvider oldWidget) {
    return oldWidget.hashCode != hashCode;
  }
}
