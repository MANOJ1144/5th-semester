// import 'package:flutter/material.dart';

// import '../model/si.dart';

// class SimpleInterestView extends StatefulWidget {
//   const SimpleInterestView({super.key});

//   @override
//   State<SimpleInterestView> createState() => _SimpleInterestViewState();
// }

// class _SimpleInterestViewState extends State<SimpleInterestView> {
//   final principleController = TextEditingController();
//   final timeController = TextEditingController();
//   final rateController = TextEditingController();
//   double result = 0;


//   @override
//   void initState() {
//     principleController.text = '100';
//     timeController.text = '1';
//     rateController.text = '12';
//     super.initState();
//   }

//   @override
//   void dispose() {
//     principleController.dispose();
//     timeController.dispose();
//     rateController.dispose();
//     super.dispose();
//   }

//   late SimpleInterestModel obj;

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Calculate Simple Interest Program"),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 12),
//               TextField(
//                 controller:principleController,
//                 keyboardType:TextInputType.number ,
//                 decoration: InputDecoration(
//                   labelText: "Enter the Principle",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               TextField(
//                 onChanged: (value) {
//                   time = double.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   labelText: "Enter the Time",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               TextField(
//                 onChanged: (value) {
//                   rate = double.parse(value);
//                 },
//                 decoration: InputDecoration(
//                   labelText: "Enter the Rate",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     simpleInterest();
//                   },
//                   child: const Text('Calculate Interest'),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               Text(
//                 'Simple Interest is $interest.',
//                 style: const TextStyle(
//                     fontSize: 20,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }























// // import 'package:flutter/material.dart';
// // import 'package:flutter_app/model/si.dart';

// // class SimpleInterestView extends StatefulWidget {
// //   const SimpleInterestView({super.key});

// //   @override
// //   State<SimpleInterestView> createState() => _SimpleInterestViewState();
// // }

// // class _SimpleInterestViewState extends State<SimpleInterestView> {
// //   double principle = 0;
// //   double time = 0;
// //   double rate = 0;
// //   double result = 0;


// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Simple Interest'),
// //         centerTitle: true,
// //         elevation: 0,
// //       ),
// //       body: Padding(
// //         padding: EdgeInsets.all(8.0),
// //         child: Column(
// //           children: [
// //             const SizedBox(height: 8),
// //             TextField(
// //               onChanged: (value) {
// //                 principle = double.parse(value);
// //               },
// //               decoration: const InputDecoration(
// //                 labelText: "Enter the principle",
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             const SizedBox(height: 8),
// //             TextField(
// //               onChanged: (value) {
// //                 time = double.parse(value);
// //               },
// //               decoration: const InputDecoration(
// //                 labelText: "Enter the time",
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             const SizedBox(height: 8),
// //             TextField(
// //               onChanged: (value) {
// //                 rate = double.parse(value);
// //               },
// //               decoration: const InputDecoration(
// //                 labelText: "Enter the rate",
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             const SizedBox(height: 8),
// //             SizedBox(
// //               width: double.infinity,
// //               child: ElevatedButton(
// //                 onPressed: () {
// //                   setState(() {
// //                     result = (principle * time * rate) / 100;
// //                   });
// //                 },
// //                 child: const Text('Calculate the simple interest'),
// //               ),
// //             ),
// //             const SizedBox(
// //               height: 8,
// //             ),
// //             Text(
// //               'Simple Interest is: $result',
// //               style: const TextStyle(),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
