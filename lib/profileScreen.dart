// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:hngtask1/githubWebView.dart';

class ProfileScreen extends StatelessWidget {
  static String id = 'ProfileScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF372753),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFFEC837F), width: 3),
                  image: DecorationImage(
                      image: AssetImage(
                        'images/olankan.JPG',
                      ),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Olankan Odeyemi',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () async {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 10),
                          Text("Loading..."),
                        ],
                      ),
                    );
                  },
                );
              await  Future.delayed(
                  Duration(seconds: 3),
                  () async {
                   await Navigator.pushNamed(context, WebViewScreen.id);
                    Navigator.pop(context);
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white),
                ),
                height: 40,
                width: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      EvaIcons.github,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Open GitHub',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:hngtask1/githubWebView.dart';

// class ProfileScreen extends StatelessWidget {
//   static String id = 'ProfileScreen';

//   // A Future to simulate loading the next screen
//   Future<void> _loadNextScreen(BuildContext context) async {
//     await Future.delayed(Duration(milliseconds: 0)); // Simulate loading time
//     Navigator.pushNamed(context, WebViewScreen.id);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Your profile content
//             // ...
//             Container(
//               height: 200,
//               width: 200,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   border: Border.all(color: Colors.black),
//                   image: DecorationImage(
//                       image: AssetImage(
//                         'images/olankan.JPG',
//                       ),
//                       fit: BoxFit.cover)),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               'Olankan Odeyemi',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             GestureDetector(
//               onTap: () {
//                 // showDialog(
//                 //   context: context,
//                 //   builder: (BuildContext context) {
//                 //     return AlertDialog(
//                 //       content: Column(
//                 //         mainAxisSize: MainAxisSize.min,
//                 //         children: [
//                 //           CircularProgressIndicator(),
//                 //           SizedBox(height: 10),
//                 //           Text("Loading..."),
//                 //         ],
//                 //       ),
//                 //     );
//                 //   },
//                 // );

//                 // Simulate loading the next screen
//                 _loadNextScreen(context).then((_) {
//                   // Close the dialog when done loading
//                   Navigator.pop(context);
//                 });
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(12),
//                   border: Border.all(color: Colors.white),
//                 ),
//                 height: 40,
//                 width: 130,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       EvaIcons.github,
//                       color: Colors.white,
//                     ),
//                     SizedBox(width: 5),
//                     Text(
//                       'Open GitHub',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
