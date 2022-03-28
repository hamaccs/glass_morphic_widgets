// import 'package:flutter/material.dart';
// import 'package:glassmorphic_widgets/oth/glassmorphic_without_stack.dart';
//
// class Example2 extends StatelessWidget {
//   const Example2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('EXAMPLE 2'),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/colourful_leaves.jpeg"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Center(
//           child: GlassMorphicWithoutStack(
//             blurX: 2.0,
//             blurY: 2.0,
//             shadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.3),
//                   offset: const Offset(0, 0),
//                   blurRadius: 30,
//                   spreadRadius: 5,
//                 ),
//               ],
//             padding: const EdgeInsets.all(40.0),
//             child: const Text(
//               'Glassmorphic Container\n without Stack \n View',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
