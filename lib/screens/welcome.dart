// // ignore_for_file: use_super_parameters, prefer_const_constructors, library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:satu/features/authentication/login/screens/login_screen.dart';
// import 'package:flutter/services.dart';

// // class CountUs extends StatelessWidget {
// //   const CountUs({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'CountUs',
// //       home: const LandingPage(),
// //     );
// //   }
// // }

// class LandingPage extends StatelessWidget {
//   const LandingPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         title: const Text('CountUs'),
//         titleTextStyle: const TextStyle(
//             fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       extendBodyBehindAppBar: true,
//       backgroundColor: const Color(0XFF011F6B),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               children: [
//                 const SizedBox(
//                   height: 120,
//                 ),
//                 const Text("Our Menu",
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white)),
//                 const SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const AddSubtractPage()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0XFFB3CDE0),
//                     foregroundColor: Color(0XFF03396C),
//                     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: const Text('Addition and Subtraction'),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const OddEvenPage()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0XFFB3CDE0),
//                     foregroundColor: Color(0XFF03396C),
//                     padding:
//                         EdgeInsets.symmetric(vertical: 15, horizontal: 110),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: const Text('Odd or Even'),
//                 ),
//                 const SizedBox(
//                   height: 35,
//                 ),
//                 Text(
//                   "Created by:",
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0XFFffffff).withOpacity(0.46),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   "Stevan Lionel Osvaldo (124220066)",
//                   style: TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0XFFffffff).withOpacity(0.46),
//                   ),
//                 ),
//                 Text(
//                   "Satrio Adi Saputro (124220073)",
//                   style: TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0XFFffffff).withOpacity(0.46),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => LoginScreen()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0XFF03396C),
//                     padding: EdgeInsets.symmetric(vertical: 7, horizontal: 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text(
//                     'Logout',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Image.asset('assets/images/home.png'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AddSubtractPage extends StatefulWidget {
//   const AddSubtractPage({Key? key}) : super(key: key);

//   @override
//   _AddSubtractPageState createState() => _AddSubtractPageState();
// }

// class _AddSubtractPageState extends State<AddSubtractPage> {
//   final TextEditingController numberOne = TextEditingController();
//   final TextEditingController numberTwo = TextEditingController();
//   String _result = '';

//   void _calculate(bool isAddition) {
//     setState(() {
//       int num1 = int.tryParse(numberOne.text) ?? 0;
//       int num2 = int.tryParse(numberTwo.text) ?? 0;
//       int result = isAddition ? num1 + num2 : num1 - num2;
//       _result = 'Result: $result';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         title: const Text('CountUs'),
//         titleTextStyle: const TextStyle(
//             fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       extendBodyBehindAppBar: true,
//       backgroundColor: const Color(0XFF011F6B),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 150, left: 30, right: 30),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Text(
//                 "Simple Calculator",
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               const Text(
//                 "Solve Addition and Subtraction",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.normal,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               TextField(
//                 controller: numberOne,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Enter first number',
//                   labelStyle: TextStyle(color: Color(0xFF011F6B)),
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 style: TextStyle(color: Color(0xFF011F6B)),
//                 inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               TextField(
//                 controller: numberTwo,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Enter Second number',
//                   labelStyle: TextStyle(color: Color(0xFF011F6B)),
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 style: TextStyle(color: Color(0xFF011F6B)),
//                 inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//                 ElevatedButton(
//                   onPressed: () => _calculate(true),
//                   child: const Text('Add'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => _calculate(false),
//                   child: const Text('Subtract'),
//                 ),
//               ]),
//               const SizedBox(height: 30),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.blue[100],
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Text(
//                   _result,
//                   style: const TextStyle(
//                       fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Image.asset(
//                 'assets/images/calculator.png',
//                 fit: BoxFit.cover,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class OddEvenPage extends StatefulWidget {
//   const OddEvenPage({Key? key}) : super(key: key);

//   @override
//   _OddEvenPageState createState() => _OddEvenPageState();
// }

// class _OddEvenPageState extends State<OddEvenPage> {
//   final TextEditingController oddEvenControl = TextEditingController();
//   String _result = '';

//   void _checkOddEven() {
//     setState(() {
//       int number = int.tryParse(oddEvenControl.text) ?? 0;
//       _result = number % 2 == 0 ? 'Even' : 'Odd';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         title: const Text('CountUs'),
//         titleTextStyle: const TextStyle(
//             fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       extendBodyBehindAppBar: true,
//       backgroundColor: const Color(0XFF011F6B),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 190, left: 30, right: 30),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "Odd/Even Number",
//                 style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Determine Odd/Even Number",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.normal,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               TextField(
//                 controller: oddEvenControl,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Enter a Number',
//                   labelStyle: TextStyle(
//                     color: Color(0xFF011F6B),
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               ElevatedButton(
//                 onPressed: _checkOddEven,
//                 child: const Text('Check'),
//               ),
//               const SizedBox(height: 55),
//               Container(
//                 padding: const EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: Colors.blue[100],
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Text(
//                   'Result: $_result',
//                   style: const TextStyle(
//                       fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Image.asset(
//                 'assets/images/odd.png',
//                 fit: BoxFit.cover,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
