import 'package:flutter/material.dart';
import 'package:glassmorphic_widgets/glass_card.dart';
import 'package:glassmorphic_widgets/glass_morphic_card.dart';

import 'example1.dart';
import 'example2.dart';
import 'example3.dart';
import 'example4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glass Morphic Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'title'),
      home: const GlassTest(),
    );
  }
}

class GlassTest extends StatelessWidget {
  const GlassTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/colourful_leaves.jpeg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                GlassCard(
                  elevation: 3,
                  width: 140,
                  height: 140,
                  // padding: EdgeInsets.all(16),
                  borderRadius: BorderRadius.circular(4),
                  child: Text('Glass Card'),
                ),
                SizedBox(height: 10),
                GlassMorphicCard(
                  // elevation: 3,

                  width: 140,
                  height: 140,
                  margin: EdgeInsets.all(16),
                  borderRadius: BorderRadius.circular(4),
                  child: Text('Glass Morphic Card'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   final String title;
//
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Examples of GLASS MORPHISM'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Example1()),
//                 );
//               },
//               child: const Text('Go to EXAMPLE 1'),
//             ),
//             const SizedBox(height: 15.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Example2()),
//                 );
//               },
//               child: const Text('Go to EXAMPLE 2'),
//             ),
//             const SizedBox(height: 15.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Example3()),
//                 );
//               },
//               child: const Text('Go to EXAMPLE 3'),
//             ),
//             const SizedBox(height: 15.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Example4()),
//                 );
//               },
//               child: const Text('Go to EXAMPLE 4'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Welcome!',
//                       style: const TextStyle(fontSize: 40),
//                     ),
//                     Text(
//                       'Sign in to continue',
//                       style: const TextStyle(fontSize: 15),
//                     ),
//                     SizedBox(height: 40),
//                     TextField(
//                       decoration: InputDecoration(label: Text('Username')),
//                     ),
//                     SizedBox(height: 20),
//                     TextField(
//                       decoration: InputDecoration(label: Text('Password')),
//                     ),
//                     SizedBox(height: 40),
//                     Center(
//                       child: Text(
//                         'Forgot Password?',
//                         style: const TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     ElevatedButton(
//                         onPressed: () {},
//                         child: Container(
//                             width: double.infinity,
//                             child: Center(child: Text('LOGIN')))),
//                     SizedBox(height: 20),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           /// color the text in TextButton (two ways):
//                           /// 1. color in TextStyle inside Text which is child of TextButton,
//                           /// 2. foregroundColor in ButtonStyle inside TextButton
//                           TextButton(
//                             onPressed: () {},
//                             child: Text('Demo Login'),
//                             style: ButtonStyle(
//                                 foregroundColor:
//                                     MaterialStateProperty.all(Colors.black),
//                                 overlayColor:
//                                     MaterialStateProperty.all(Colors.teal)),
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             child: Text(
//                               'Check CPA Eligibility',
//                               style: TextStyle(color: Colors.black),
//                             ),
//                             style: ButtonStyle(
//                                 overlayColor:
//                                     MaterialStateProperty.all(Colors.teal)),
//                           ),
//                         ]),
//                   ],
//                 )
