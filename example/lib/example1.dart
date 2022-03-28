// import 'package:flutter/material.dart';
// import 'package:glassmorphic_widgets/oth/creative_glassmorphism.dart';
//
// class Example1 extends StatelessWidget {
//   const Example1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('EXAMPLE 1'),
//       ),
//       body: Stack(
//         children: [
//           Image.asset(
//             "assets/floating_spheres.jpeg",
//             fit: BoxFit.cover,
//             height: double.infinity,
//             width: double.infinity,
//             // scale: 1,
//           ),
//           const Center(
//             child: CreativeGlassmorphism(
//               margin: EdgeInsets.all(50.0),
//               padding: EdgeInsets.all(15.0),
//               shadow: [
//                 BoxShadow(
//                   color: Colors.black,
//                   offset: Offset(0.0, 1.0), //(x,y)
//                   blurRadius: 6.0,
//                 ),],
//               child: Text(
//                 'Creative \n Glassmorphic \n View',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//           ),
//           // GlassWidget(child: Text('He There')),
//         ],
//       ),
//     );
//   }
// }