library custom_fab;

import 'package:flutter/material.dart';

class CustomFab extends StatelessWidget {
  /// Defines size of the widget or the custom fab button
  final double size;

  /// The z-coordinate at which to place this button relative to its parent.
  ///
  /// This controls the size of the shadow below the floating action button.
  ///
  /// Defaults to 6, the appropriate elevation for floating action buttons. The
  /// value is always non-negative.
  final double elevation;

  /// Color that the shadow will be drawn with.
  ///
  /// The shadows are shapes composited directly over the base canvas, and do not
  /// represent optical occlusion.
  final Color shadowColor;

  /// Path to the image asset to be used for the widget.
  final String? assetPath;

  /// An [Icon] widget that can be used within the standard [FloatingActionButton].
  final Icon? icon;

  /// Called when the user taps this part of the material.
  final GestureTapCallback? onTap;

  const CustomFab({
    super.key,
    this.size = 56.0,
    this.shadowColor = Colors.grey,
    this.elevation = 6,
    this.assetPath,
    this.onTap,
    this.icon,
  }) : assert(
            (assetPath == null || icon == null) &&
                ((assetPath == null && icon != null) ||
                    (assetPath != null && icon == null)),
            'Either both properties must be null, or exactly one of them must be non-null.');

  @override
  Widget build(BuildContext context) {
    if (assetPath != null) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.4),
            spreadRadius: 1.0,
            blurRadius: elevation,
            offset: Offset(0, elevation / 2),
          )
        ]),
        child: Stack(
          children: [
            Image.asset(assetPath!),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(size / 2),
                onTap: onTap,
              ),
            )
          ],
        ),
      );
    }
    return FloatingActionButton(
      onPressed: onTap,
      elevation: elevation,
      tooltip: 'Increment',
      child: icon,
    );
  }
}
