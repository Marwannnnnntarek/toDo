// // import 'package:flutter/material.dart';

// // // ignore: must_be_immutable
// // class HomeViewBody extends StatefulWidget {
// //    HomeViewBody({super.key,});

// //   @override
// //   State<HomeViewBody> createState() => _HomeViewBodyState();
// // }

// // class _HomeViewBodyState extends State<HomeViewBody> {

// // int _currentIndex = 0;
// // bool? value = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: IndexedStack(
// //         index: _currentIndex,
// //         children: [
// //           // Screen 1
// //           Center(
// //             child: Text('Screen 1'),
// //           ),
// //           // Screen 2
// //           Center(
// //             child: Text('Screen 2'),
// //           ),
// //           // Screen 3
// //           Center(
// //             child: Text('Screen 3'),
// //           ),
// //         ],
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         type: BottomNavigationBarType.fixed,
// //         currentIndex: _currentIndex,
// //         onTap: (index) {
// //           setState(() {
// //             _currentIndex = index;
// //           });
// //         },
// //         items: [
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.settings),
// //             label: 'Settings',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.help),
// //             label: 'Help',
// //           ),
// //         ],
// //       ),
// //     );

// //   }
// // }

// import 'package:flutter/material.dart';

// class TabItem extends StatelessWidget {
//   final String label;
//   final int index;

//   const TabItem({Key? key, required this.label, required this.index})
//     : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Switch to the corresponding index on tap
//         final homeViewState = context.findAncestorStateOfType<_HomeViewState>();
//         if (homeViewState != null) {
//           homeViewState.setState(() {
//             homeViewState._currentIndex = index;
//           });
//         }
//       },
//       child: Container(
//         width: 100,
//         height: 31,
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(24),
//         ),
//         child: Center(
//           child: Text(
//             label,
//             style: const TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.w500,
//               fontSize: 10,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
