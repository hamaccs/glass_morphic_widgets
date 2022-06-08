import 'dart:ui';

import 'package:flutter/material.dart';

class GlassWidget extends StatelessWidget {
  const GlassWidget({
    Key? key,
    required this.child,
    this.margin,
    this.padding,
    this.borderRadius,
    // this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.blurX = 3,
    this.blurY = 3,
    this.alignment,
    this.glassColor,
    this.decoration,
    this.width,
    this.height,
  }) : super(key: key);
  final BorderRadiusGeometry? borderRadius;

  // final CustomClipper ? clipper;
  final double blurX;
  final double blurY;

  // final TileMode tileMode;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Color? glassColor;
  final Decoration? decoration;

  // final Decoration? foregroundDecoration;
  final double? width;
  final double? height;

  // final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;

  // final Matrix4? transform;
  // final AlignmentGeometry? transformAlignment;
  final Widget? child;

  // final Clip clipBehavior;
  // final BlendMode blendMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: glassColor ?? Colors.white.withOpacity(0.2),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0,
            blurRadius: 4,
            blurStyle: BlurStyle.outer,
          ),
        ],
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   colors: [
        //     Colors.white.withOpacity(0.6),
        //     Colors.white.withOpacity(0.6),
        //   ],
        //   // stops: [0.1, 1],
        // ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: child,
        ),
      ),
    );
  }
}
