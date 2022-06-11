// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/gestures.dart';

// class LoginWidget extends StatefulWidget {
//   @override
//   State<LoginWidget> createState() => _LoginWidgetState();
// }

// class _LoginWidgetState extends State<LoginWidget> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) => SingleChildScrollView(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 40,
//             ),
//             TextField(
//               controller: emailController,
//               cursorColor: Colors.white,
//               textInputAction: TextInputAction.next,
//               decoration: InputDecoration(labelText: "Email"),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             TextField(
//               controller: passwordController,
//               cursorColor: Colors.white,
//               textInputAction: TextInputAction.done,
//               decoration: InputDecoration(labelText: "password"),
//               obscureText: true,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton.icon(
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: Size.fromHeight(50),
//                 ),
//                 onPressed: signIn,
//                 icon: Icon(
//                   Icons.lock_open,
//                   size: 32,
//                 ),
//                 label: Text(
//                   "sign in",
//                   style: TextStyle(fontSize: 24),
//                 ))
//           ],
//         ),
//       );
//   Future signIn() async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: emailController.text.trim(),
//       password: passwordController.text.trim(),
//     );
//   }
// }
