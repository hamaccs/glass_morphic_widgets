library glassmorphic_widgets;
import 'dart:ui';

import 'package:flutter/material.dart';

///GlassMorphicCard means => glassMorphic means glass with blur effect
///                        & card means having some elevation


class GlassMorphicCard extends StatelessWidget {


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


  const GlassMorphicCard({
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double shadowStrength = elevation > 10 ? 10 : elevation;
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          boxShadow: shadow ??
              [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1 * shadowStrength),
                  offset: const Offset(0, 0),
                  blurRadius: 6.0,
                  spreadRadius: 1,
                ),
              ]
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blur,
            sigmaY: blur,
            // tileMode: TileMode.mirror,
          ),
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
            ),
            child: child,
          ),
        ),
        // blendMode: ,
      ),
    );
  }
}