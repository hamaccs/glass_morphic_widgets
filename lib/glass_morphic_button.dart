import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphicButton extends StatelessWidget {
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final Gradient? gradient;

  final double? width;
  final double? height;

  final EdgeInsetsGeometry? margin;

  final Widget? child;

  final List<BoxShadow>? shadow;
  final BorderRadius borderRadius;

  ///[elevation] defines how much strength the shadow will have
  final double elevation;

  final Color glassColor;
  final Border? border;

  final double blur;

  final void Function()? onTap;


  const GlassMorphicButton({
    Key? key,
    this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(4)),
    this.alignment,
    this.padding,
    this.decoration,
    this.width,
    this.height,
    this.margin = const EdgeInsets.all(8),
    this.shadow, this.gradient,
    this.elevation = 0,
    this.glassColor = const Color(0xFFFFFFFF),
    this.border, this.blur = 3,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blur,
          sigmaY: blur,
          // tileMode: TileMode.mirror,
        ),
        child: InkWell(
          splashColor: Colors.red,
          onTap: onTap,
          child: Container(
            width: width,
            height: height,
            padding: padding,
            // margin: margin,
            decoration: decoration ?? BoxDecoration(
              borderRadius: borderRadius,
              border: border ?? Border.all(
                color: Colors.white38,
                width: 0.8,
              ),
              gradient: gradient ?? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  glassColor.withOpacity(0.4),
                  // glassColor.withOpacity(0.4),
                ],
                stops: const [ 1],
              ),
              boxShadow: [BoxShadow(blurStyle: BlurStyle.outer)]
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
