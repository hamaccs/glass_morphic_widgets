library glassmorphic_widgets;

import 'dart:ui';

import 'package:flutter/material.dart';

///GlassCard means => glass means some transparency without blur effect (see through glass)
///                 & card means having some elevation

class GlassCard extends StatelessWidget {
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

  const GlassCard({
    Key? key,
    this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(4)),
    this.alignment,
    this.padding,
    this.decoration,
    this.width,
    this.height,
    this.margin = const EdgeInsets.all(8),
    this.shadow,
    this.gradient,
    this.elevation = 1,
    this.glassColor = const Color(0xFFFFFFFF),
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double shadowStrength = elevation > 10 ? 10 : elevation;
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 0,
          sigmaY: 0,
        ),
        child: Container(
          alignment: alignment,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: borderRadius,
            backgroundBlendMode: BlendMode.clear,
            boxShadow: shadow ??
                [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1 * shadowStrength),
                    offset: const Offset(0.0, 0.0), //(x,y)
                    blurRadius: 6.0,
                    spreadRadius: 1,
                  ),
                ],
          ),
          margin: margin,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 20,
              sigmaY: 20,
              // tileMode: TileMode.mirror,
            ),
            child: Container(
              width: width,
              height: height,
              padding: padding,
              decoration: decoration ??
                  BoxDecoration(
                    borderRadius: borderRadius,
                    backgroundBlendMode: BlendMode.srcOver,
                    border: border ??
                        Border.all(
                          color: Colors.white38,
                          width: 0.8,
                        ),
                    gradient: gradient ??
                        LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            glassColor.withOpacity(0.4),
                            // glassColor.withOpacity(0.4),
                          ],
                          stops: const [1],
                        ),
                  ),
              child: child,
            ),
          ),
        ),
      ),
      // blendMode: ,
    );
  }
}
