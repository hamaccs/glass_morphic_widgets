// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// class GlassWidget extends StatelessWidget {
//   const GlassWidget({
//     Key? key,
//     required this.child,
//     this.margin,
//     this.padding, this.borderRadius = 10.0, this.blurX = 3, this.blurY = 3, this.alignment, this.color, this.decoration, this.width, this.height,
//   }) : super(key: key);
//   final double borderRadius;
//
//   // final CustomClipper ? clipper;
//   final double blurX;
//   final double blurY;
//
//   // final TileMode tileMode;
//   final AlignmentGeometry? alignment;
//   final EdgeInsetsGeometry? padding;
//   final Color? color;
//   final Decoration? decoration;
//
//   // final Decoration? foregroundDecoration;
//   final double? width;
//   final double? height;
//
//   // final BoxConstraints? constraints;
//   final EdgeInsetsGeometry? margin;
//
//   // final Matrix4? transform;
//   // final AlignmentGeometry? transformAlignment;
//   final Widget? child;
//
//   // final Clip clipBehavior;
//   // final BlendMode blendMode;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: margin ?? EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(12),
//         child: BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
//           child: Container(
//             alignment: alignment,
//             decoration: BoxDecoration(
//               // color: Colors.white.withOpacity(0.50),
//               borderRadius: BorderRadius.circular(12),
//
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [
//                   Colors.white.withOpacity(0.6),
//                   Colors.white.withOpacity(0.6),
//                 ],
//                 // stops: [0.1, 1],
//               ),
//
//             ),
//             child: Padding(
//               padding: padding ?? const EdgeInsets.all(8.0),
//               child: child,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }