import 'package:flutter/material.dart';
import 'package:flutter_study_app/routes/app_route.dart';

import '../screens/home/home_screen.dart';

class AppCircleButton extends StatelessWidget {
  const AppCircleButton({
    super.key,
    required this.child,
    this.color,
    this.width,
    this.onTap,
  });

  final Widget child;
  final Color? color;
  final double? width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      clipBehavior: Clip.hardEdge,
      shape: CircleBorder(),
      child: InkWell(child: child),
    );
  }
}
