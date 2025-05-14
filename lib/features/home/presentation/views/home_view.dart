// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';
// // import 'package:google_fonts/google_fonts.dart';

// // class HomeView extends StatefulWidget {
// //   const HomeView({super.key});

// //   @override
// //   State<HomeView> createState() => _HomeViewState();
// // }

// // class _HomeViewState extends State<HomeView> {
// //   bool? value = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         backgroundColor: Colors.white,
// //         body: Padding(
// //           padding: const EdgeInsets.only(top: 84),
// //           child: Column(
// //             children: [
// //               _Header(),
// //               _TaskRow(),
// //             ],
// //           ),
// //         ),
// //         bottomNavigationBar: Padding(
// //           padding: const EdgeInsets.only(bottom: 16),
// //           child: Container(
// //             height: 51,
// //             width: 385,
// //             margin: const EdgeInsets.symmetric(horizontal: 16),
// //             decoration: BoxDecoration(
// //               color: const Color.fromARGB(255, 241, 240, 240),
// //               borderRadius: BorderRadius.circular(40),
// //               boxShadow: [
// //                 BoxShadow(
// //                   color: Colors.black12,
// //                   blurRadius: 10,
// //                   offset: Offset(0, -2),
// //                 ),
// //               ],
// //             ),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 _buildTabItem('All', '/all'),
// //                 _buildTabItem('Pending', '/pending'),
// //                 _buildTabItem('Completed', '/completed'),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _TaskRow() {
// //     return Row(
// //               children: [
// //                 Checkbox(
// //                   tristate: true,
// //                   value: value,
// //                   onChanged: (bool? newValue) {
// //                     setState(() {
// //                       value = newValue;
// //                     });
// //                   },
// //                 ),
// //                 Expanded(
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: const [
// //                       Text(
// //                         'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
// //                         style: TextStyle(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       Text('12:42 PM', style: TextStyle(color: Colors.grey)),
// //                     ],
// //                   ),
// //                 ),
// //                 IconButton(
// //                   onPressed: () {},
// //                   icon: const Icon(Icons.more_vert),
// //                 ),
// //               ],
// //             );
// //   }

// //   Widget _buildTabItem(String label, String route) {
// //     return GestureDetector(
// //       onTap: () {
// //         context.go(route); // Navigate using go_router
// //       },
// //       child: Container(
// //         width: 100,
// //         height: 31,
// //         decoration: BoxDecoration(
// //           color: Colors.black,
// //           borderRadius: BorderRadius.circular(24),
// //         ),
// //         child: Center(
// //           child: Text(
// //             label,
// //             style: const TextStyle(
// //               color: Colors.white,
// //               fontWeight: FontWeight.w500,
// //               fontSize: 10,
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class _Header extends StatelessWidget {
// //   const _Header({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListTile(
// //       title: Text(
// //         'Tasks',
// //         style: GoogleFonts.montserrat(
// //           fontSize: 34,
// //           fontWeight: FontWeight.bold,
// //         ),
// //       ),
// //       subtitle: Text(
// //         'October 15',
// //         style: GoogleFonts.inter(
// //           fontSize: 18,
// //           fontWeight: FontWeight.w500,
// //         ),
// //       ),
// //       trailing: IconButton(
// //         onPressed: () {},
// //         icon: SizedBox(
// //           height: 42,
// //           width: 42,
// //           child: Icon(Icons.add_circle),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:todo/features/all/presentation/views/widgets/header.dart';
// import 'package:todo/features/all/presentation/views/widgets/task_row.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   bool? value = false;
//  int _currentIndex = 0;
//  // List of screens to be displayed in the IndexedStack
//   final List<Widget> _screens = [
//     const Center(child: Text('All Tasks')),
//     const Center(child: Text('Pending Tasks')),
//     const Center(child: Text('Completed Tasks')),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Padding(
//           padding: const EdgeInsets.only(top: 84),
//           child: Column(
//             children: [
//               Header(),
//               TaskRow(
//                 value: value,
//                 onChanged: (newValue) {
//                   setState(() {
//                     value = newValue;
//                   });
//                 },
//               ),
//               Expanded(
//                 child: IndexedStack(
//                   index: _currentIndex,
//                   children: _screens,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: _buildBottomNavigationBar(context),
//       ),
//     );
//   }

//   // Bottom Navigation Bar widget
//   Widget _buildBottomNavigationBar(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: Container(
//         height: 51,
//         width: 385,
//         margin: const EdgeInsets.symmetric(horizontal: 16),
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 241, 240, 240),
//           borderRadius: BorderRadius.circular(40),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 10,
//               offset: Offset(0, -2),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             _buildTabItem('All', '/AllTasksView', context),
//             _buildTabItem('Pending', '/PendingTasksView', context),
//             _buildTabItem('Completed', '/CompletedTasksView', context),
//           ],
//         ),
//       ),
//     );
//   }

//   // Tab Item widget
//   Widget _buildTabItem(String label, String route, BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         context.go(route); // Navigate using go_router
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/features/all/presentation/views/all_tasks_view.dart';
import 'package:todo/features/completed/presentation/views/completed_tasks_view.dart';
import 'package:todo/features/pending/presentation/views/pending_tasks_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    AllTasksView(),
    PendingTasksView(),
    CompletedTasksView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _screens[_currentIndex], // Show selected screen
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Container(
            height: 51,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 241, 240, 240),
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTabItem('All', 0),
                _buildTabItem('Pending', 1),
                _buildTabItem('Completed', 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(String label, int index) {
    final isSelected = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        width: 100,
        height: 31,
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xffB0B0B0),
              fontWeight: FontWeight.w500,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
